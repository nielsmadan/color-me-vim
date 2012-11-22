Things to think about
=====================

Use the same color for similar groups / groups that often appear together.

    * Statement
    * Conditional
    * Repeat
    * Operator

Example:

    elif decoded_body is not None and contenttype in (CONTENT_TYPE_FORM_URLENCODED, ''):
        # Normal signing
        if not contenttype:
            r.headers['Content-Type'] = CONTENT_TYPE_FORM_URLENCODED
        r.url, r.headers, r.data = self.client.sign(
            unicode(r.full_url), unicode(r.method), r.data, r.headers)

Compare:

    hi Operator guifg=#AE81FF guibg=bg gui='none'

Make exceptional (exception handling, import, meta programming) things pop out.

Example:

    def authenticate_server(self, r):
        """uses gssapi to authenticate the server"""

        log.debug("authenticate_server(): authenticate header: %s" % _negotiate_value(r))
        result = k.authgssclientstep(self.context, _negotiate_value(r))
        if  result < 1:
            raise exception("authgssclientstep failed")
        _r = r.request.response
        log.debug("authenticate_server(): returning %s" % _r)
        return _r

Compare:

    hi Operator guifg=#AE81FF guibg=bg gui='none'

##Question to you: What do you like / dislike about a color scheme?
