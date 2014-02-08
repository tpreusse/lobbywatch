{capture assign="ContentBlock"}

{* http://jquerytools.org/demos/tabs/index.html *}
{*<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>*}
<script src="components/templates/custom_templates/js/jquery.tools.min.js"></script>

<!-- the tabs -->
<ul class="css-tabs">
  <li><a href="#preview">Vorschau</a></li>
  <li><a href="#email">Autorisierungs-E-Mail</a></li>
</ul>
 
<!-- tab "panes" -->
<div class="css-panes">
  <!-- First tab content.-->
  <div class="row-fluid">

    {*<div class="span2"></div>*}

    <div class="span8">

        <div class="preview">
            <h3>{$Parlamentarier.Title}</h3>

            <div style="padding-left: 20px;">
                {$Parlamentarier.Preview}
            </div>

        </div>
    </div>
  </div>
  <!-- Second tab content.-->
  <div class="row-fluid">

    {*<div class="span2"></div>*}

    <div class="span8">

        <div class="email">
            <h3>{$Parlamentarier.EmailTitle}</h3>
            <p><small>1. E-Mail selektieren, 2. Kopieren, 3. E-Mail öffnen, 4. E-Mail-Text einfügen.</small></p>
            <button id="email-select-button">E-Mail selektieren</button>
            <button id="email-open">E-Mail öffnen</button>

            <div id="email-content" style="padding-left: 20px;" class="email-content">
                {$Parlamentarier.EmailText}
            </div>

        </div>
    </div>
  </div>
</div>

<script type="text/javascript">{literal}
  //http://stackoverflow.com/questions/985272/jquery-selecting-text-in-an-element-akin-to-highlighting-with-your-mouse
  function selectText(element) {
      var doc = document
          , text = doc.getElementById(element)
          , range, selection
      ;    
      if (doc.body.createTextRange) { //ms
          range = doc.body.createTextRange();
          range.moveToElementText(text);
          range.select();
      } else if (window.getSelection) { //all others
          selection = window.getSelection();        
          range = doc.createRange();
          range.selectNodeContents(text);
          selection.removeAllRanges();
          selection.addRange(range);
      }
  }
  
  jQuery.fn.selectText = function(){
      var doc = document
          , element = this[0]
          , range, selection
      ;
      if (doc.body.createTextRange) {
          range = document.body.createTextRange();
          range.moveToElementText(element);
          range.select();
      } else if (window.getSelection) {
          selection = window.getSelection();        
          range = document.createRange();
          range.selectNodeContents(element);
          selection.removeAllRanges();
          selection.addRange(range);
      }
  };

  // perform JavaScript after the document is scriptable.
  $(function() {
      // setup ul.tabs to work as tabs for each div directly under div.panes
      $(".css-tabs:first").tabs(".css-panes:first > div", { history: true });
      
      //$(".email-content").dblclick(function() {
      //  selectText('email-content');
      //});

      $("#email-select-button").click(function() {
        //selectText('email-content');
        $('#email-content').selectText();
      });

      $("#email-open").click(function() {
        window.open("{/literal}{$Parlamentarier.MailTo}{literal}", 'Mailer');
        return false;
      });
  });
{/literal}</script>


{/capture}

{capture assign="SideBar"}
  {include file="page_list.tpl" List=$PageList}
{/capture}

{include file="common/layout.tpl"}
