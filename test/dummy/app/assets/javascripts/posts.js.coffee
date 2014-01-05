$ = jQuery

$.fn.extend

  ads: (options) ->
    settings =
      rotate: true
      period: 10000
      debug: false

    settings = $.extend settings, options

    log = (msg) ->
      console?.log msg if settings.debug

    get_ad = ->
      log "#{this} get ad"
      # each type of banner in the page
      bt = []
      bc = $('.banner').size()
      $('.banner').each (i, elm) ->
        bt.push $(elm).data('name')

      banner_link = "/ads/ads?bc=#{bc}&bt=#{bt.toString()}"
      log "Banner Link: #{banner_link}"
      $.getJSON banner_link, (data)->
        log "Date from server: #{data}"
        for type, info of data
          banner_div = $(".#{type}")
          width  = banner_div.data 'width'
          height = banner_div.data 'height'
          banner_div.html "<a href='#{info[0].link}' target='_blank'><img src='#{info[0].image_path}' width='#{width}' height='#{height}' /></a>"
          log "Type: #{type} info: #{info[0].link}"

      #   get ads limit by number of banners and respect the banner name.
      #   add image into the banner.

    if settings.rotate      
      setInterval(get_ad, settings.period)

    get_ad()

    return @each ()->
      # log "Preparing magic show."
      # You can use your settings in here now.
      # log "Option 1 value: #{settings.rotate}"

jQuery ->
  $('.banner').ads(debug: true, rotate: false)
