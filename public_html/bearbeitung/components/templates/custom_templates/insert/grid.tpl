<div id="pgui-insert-grid" class="row-fluid">

    <div class="page-header form-header">
        <h1>{$Grid.Title}</h1>
    </div>

    <div class="pgui-edit-form">
        <form class="form-horizontal"  enctype="multipart/form-data" method="POST" action="{$Grid.FormAction}">

            <div class="form-actions top-actions">

                <div class="btn-toolbar">
                    <div class="btn-group" title="Ctrl-S: Save">
                        <button class="btn btn-primary submit-button"
                                onclick="$(this).closest('form').submit(); return false;"
                                >{$Captions->GetMessageString('Save')}</button>
                        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li data-value="save"><a href="#" class="save-button">{$Captions->GetMessageString('SaveAndBackToList')}</a></li>
                            <li data-value="saveinsert"><a href="#" class="saveinsert-button">{$Captions->GetMessageString('SaveAndInsert')}</a></li>
                            <li data-value="saveedit"><a href="#" class="saveedit-button">{$Captions->GetMessageString('SaveAndEdit')}</a></li>
                            {if count($Grid.Details) > 0}
                                <li class="divider"></li>
                            {/if}
                            {foreach from=$Grid.Details item=Detail}
                                <li><a class="save-and-open-details" href="#" data-action="{$Detail.Link}">{$Detail.Caption|string_format:$Captions->GetMessageString('SaveAndOpenDetail')}</a></li>
                            {/foreach}
                        </ul>
                    </div>

                    <div class="btn-group">
                        <button class="btn" onclick="window.location.href='{$Grid.CancelUrl}'; return false;">{$Captions->GetMessageString('Cancel')}</button>
                    </div>
                </div>
                <p style="margin: 0"><small>Tipp: Ctrl-S = Save</small></p>
            </div>

            {if not $Grid.ErrorMessage eq ''}
                <div class="alert alert-error">
                    <button class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
                    <strong>{$Captions->GetMessageString('ErrorsDuringInsertProcess')}</strong>
                    <br>
                    {$Grid.ErrorMessage}
                </div>
            {/if}

            <fieldset>
                <input id="submit-action" name="submit1" type="hidden" value="save">
                {foreach key=HiddenValueName item=HiddenValue from=$HiddenValues}
                    <input type="hidden" name="{$HiddenValueName}" value="{$HiddenValue}" />
                {/foreach}


            {foreach item=Column from=$Grid.Columns name=EditColumns}
                <div class="control-group">
                    <div class="label-container"
                    {*data-hint="{$Hints[$Column.FieldName]}" data-comment="{$Column.FieldName}: {$Column.Hint}" title="{$Column.FieldName}: {$Column.Hint}" *}>
                        <label class="control-label" for="{$Column.FieldName}_edit">
                            <span {* if $Column.Hint}class="hint"{/if *}>{$Column.Caption}</span>{if $Column.Required}<span class="required-mark">*</span>{/if}{if $MinimalFields[$Column.FieldName]}<span class="minimal-mark">(*)</span>{/if}&nbsp;{if $Hints[$Column.FieldName]}<img src="img/icons/information{if $FrFieldNames[$Column.FieldName] != $Column.Caption}-balloon{/if}.png" alt="Hinweis" data-hint="{$Hints[$Column.FieldName]}" data-hinttitle="{$FrFieldNames[$Column.FieldName]}">{/if}
                            {*if $Column.Hint}<img src="img/icons/information.png" alt="Hinweis" data-hint="{$Column.Hint}" data-hinttitle="{$Column.Caption}">{/if*}
                            {*if $Hints[$Column.FieldName]}<img src="img/icons/information.png" alt="Hinweis" data-hint="{$Hints[$Column.FieldName]}" data-hinttitle="{$Column.Caption}">{/if*}
                            {if $FrFieldNames[$Column.FieldName] != "" && $FrFieldNames[$Column.FieldName] != $Column.Caption}<br><span class="text-fr">{$FrFieldNames[$Column.FieldName]|truncate:20:"&nbsp;…":false}</span>{/if}
                        </label>
                        {include file="edit_field_options.tpl" Column=$Column}
                    </div>
                    <div class="controls">
                        {$Column.Editor}
                    </div>
                </div>
            {/foreach}

                <div class="control-group">
                    <div class="controls">
                        <span class="required-mark">*</span> - {$Captions->GetMessageString('RequiredField')}
                        <br><span class="minimal-mark">(*)</span> - {$Captions->GetMessageString('MinimalField')}
                    </div>
                </div>
            </fieldset>


            <div class="error-container"></div>

            <div class="form-actions">

                <div class="btn-toolbar">
                    <div class="btn-group">

                        <button id="submit-button"
                                class="btn btn-primary submit-button"
                                onclick="$(this).closest('form').submit(); return false;"
                                >{$Captions->GetMessageString('Save')}</button>

                        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li data-value="save"><a href="#" class="save-button">{$Captions->GetMessageString('SaveAndBackToList')}</a></li>
                            <li data-value="saveinsert"><a href="#" class="saveinsert-button">{$Captions->GetMessageString('SaveAndInsert')}</a></li>
                            <li data-value="saveedit"><a href="#" class="saveedit-button">{$Captions->GetMessageString('SaveAndEdit')}</a></li>
                            {if count($Grid.Details) > 0}
                                <li class="divider"></li>
                            {/if}
                            {foreach from=$Grid.Details item=Detail}
                                <li><a class="save-and-open-details" href="#" data-action="{$Detail.Link}">{$Detail.Caption|string_format:$Captions->GetMessageString('SaveAndOpenDetail')}</a></li>
                            {/foreach}
                        </ul>
                    </div>

                    <div class="btn-group">
                        <button class="btn" onclick="window.location.href='{$Grid.CancelUrl}'; return false;">{$Captions->GetMessageString('Cancel')}</button>
                    </div>
                </div>
            </div>

        </form>

        <script type="text/javascript">
            {literal}
            $(function() {
                    $('.dropdown-toggle').dropdown();

                    $('.save-and-open-details').click(function(e) {
                        e.preventDefault();
                        $('form').attr('action', $(this).attr('data-action'));
                        $('#submit-button').click();
                    });

                    $('a.save-button').click(function() {
                        $('#submit-action').val('save');
                        $('#submit-button').click();
                    });

                    $('a.saveedit-button').click(function() {
                        $('#submit-action').val('saveedit');
                        $('#submit-button').click();
                    });
                    $('a.saveinsert-button').click(function() {
                        $('#submit-action').val('saveinsert');
                        $('#submit-button').click();
                    });

                   /**
                    * In insert forms on Ctrl-S click the "save" action button.
                    *
                    * For Edit shortkey see in bergamotte-mgmt.js.
                    */
                    // Key codes: http://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes
                    //console.log("Ctrl-S activated");
                    $(window).keypress(function(event) {
                      //console.log( event );
                      if ((event.ctrlKey && event.which == 115) || (event.which == 19)) {
                        event.preventDefault();
                        //console.log("Save");
                        // Save is with Save as Draft module always at first position
                        $('#submit-action').val('save');
                        $('#submit-button').click();
                        // Do not trigger default behaviour of Firefox
                        // Ref: http://stackoverflow.com/questions/93695/best-cross-browser-method-to-capture-ctrls-with-jquery
                        return false;
                      }
                    });

                });
            function InsertForm_initd(editors) {
                {/literal}{$Grid.OnLoadScript}{literal};
            }
            {/literal}
        </script>
    </div>
</div>
