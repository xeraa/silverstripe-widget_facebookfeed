# Facebook widget for SilverStripe
Fetching your latest status messages from Facebook.


## Description
You have a Facebook page and regularly post status messages and you'd like to reuse these messages on your SilverStripe website? This widget will simply copy these messages (you can define the number) for you and you don't need to do it manually.


## Requirements
SilverStripe 2.4+ (might work with 2.3, but only tested on 2.4)


## Installation
1. ``allow_url_fopen`` must be enabled for this to work, otherwise you're not allowed to use remote objects.
2. SSL must be enabled as the Facebook API requires a https connection.
3. Extract the ``silverstripe-widget_facebookfeed`` folder into the top level of your site and rename it to ``widget_facebookfeed``.
4. Ensure that widgets have been enabled in your site. You should have something like the following code in ``mysite/code/Page.php``:

        public static $has_one = array(
          'SideBar' => 'WidgetArea',
        );
        public function getCMSFields(){
          $fields = parent::getCMSFields();
          $fields->addFieldToTab(
            'Root.Content.Widgets',
            new WidgetAreaEditor('SideBar')
          );
          return $fields;
        }

5. Add the placeholder ``$SideBar`` to your template where you want to display your Facebook feed.
6. Run ``/dev/build?flush=all``.
7. Reload the CMS interface, the widget should be usable on the *Widgets* tab.
8. In case you run into the error ``Fatal Error Call To Undefined Function Json_decode`` you need to install the JSON PHP extension. For example with: ``sudo apt-get install php5-json``


## Configuration
* You need to add the ID of the Facebook account you want to display in the CMS. If the URL of your account is ``https://www.facebook.com/pages/silverstripe/44641219945?ref=ts&v=wall``, it's ``44641219945``.
* You need a Facebook ``access_token`` (API change 2011/06/03). Add it to ``mysite/_config.php``: ``define('FACEBOOK_ACCESS_TOKEN', '<your token>');``
* https://developers.facebook.com/apps allows you to generate a new application.
* Generate your token: ``https://graph.facebook.com/oauth/access_token?client_id=YOUR_APP_ID&client_secret=YOUR_APP_SECRET&grant_type=client_credentials``
* For more details see https://developers.facebook.com/docs/authentication/.



## License
    Copyright (c) 2011, Philipp Krenn
    All rights reserved.
   
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above copyright
          notice, this list of conditions and the following disclaimer in the
          documentation and/or other materials provided with the distribution.
        * Neither the name of the authors nor the names of its contributors
          may be used to endorse or promote products derived from this
          software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS "AS IS" AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
