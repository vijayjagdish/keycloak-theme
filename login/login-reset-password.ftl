<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
<div id="content_write" style="width: 100%; height: 100%; position: relative; background: #F6F9FC;text-align:center;display:inline-flex;gap:32px;flex-direction: column;">
    <div style="width:100%">
      <div class="login_logo">
      </div>
    </div>
    <div style=" flex-direction: column; justify-content: center; align-items: center; gap: 48px; display: inline-flex">
    <div style="width:30%; height: 'auto'; padding-left: 40px; padding-right: 40px; padding-top: 32px; padding-bottom: 32px; background: white; box-shadow: 0px 8px 40px rgba(9, 44, 76, 0.08); border-radius: 20px; flex-direction: column; justify-content: center; align-items: center; gap: 48px; display: inline-flex">
        <div style="flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="color: #00213D; font-size: 24px; font-family: Inter; font-weight: 700; line-height: 26px; word-wrap: break-word">Update Password</div>
        </div>
        <div style="align-self: stretch; height: 'auto'; flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="align-self: stretch;flex-direction: column; justify-content: flex-start; align-items: center; gap: 40px; display: flex">
                
				
              
				<form  style="width:100%;" id="kc-passwd-update-form" action="${url.loginAction}" method="post">
                <div style="width:100%;align-self: stretch;  flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
                     <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                     readonly="readonly" style="display:none;"/>
                     <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>
                     <div style="width:100%;align-self: stretch; height: 57px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start;  display: flex">
                    <label  id="log_lab_new_pwd"  style="display:none;color: #0B6AEA;margin-left:20px;margin-bottom:-5px;z-index:1; font-size: 12px;padding:0 8px;background:white; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">New Password</label>
                    
					 <input type="password" id="password-new" name="password-new"  class= "log_btn_hover"  placeholder="New Password " type="text" style="padding:16px 28px;align-self: stretch; height: 57px;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #0B6AEA solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex" tabindex="1" aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"/>
                        <#if messagesPerField.existsError('password')>
                            <span id="input-error-password" style="margin-left:28px;color: #EB5757; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">
                                    ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </#if>
                    </div>

                    <div style="width:100%;align-self: stretch; height: 57px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start;  display: flex">
                    <label  id="log_lab_con_pwd"  style="display:none;color: #0B6AEA;margin-left:20px;margin-bottom:-5px;z-index:1; font-size: 12px;padding:0 8px;background:white; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">Confirm Password</label>
                    
					 <input type="password" id="password-confirm" name="password-confirm"  class= "log_btn_hover"  placeholder="Confirm Password " type="text" style="padding:16px 28px;align-self: stretch; height: 57px;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #0B6AEA solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex" tabindex="1" aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"/>
                        <#if messagesPerField.existsError('password-confirm')>
                            <span id="input-error-password-confirm" style="margin-left:28px;color: #EB5757; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">
                                    ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </#if>
                    </div>

                    
                    <div id="kc-form-buttons" style="width:100%">
                       <input  type="submit" value="${msg("doSubmit")}" style="border-color:#0B6AEA;width:100%;height:54px;align-self: stretch; padding-left: 32px; padding-right: 32px; padding-top: 16px; padding-bottom: 16px; background: #0B6AEA; border-radius: 8px; justify-content: center; align-items: center; display: inline-flex" />
                    </div>


                </div>
            </div>

           

			</form>
        </div>
        
		
    </div>
	</div>
    </div>
</#if>
</@layout.registrationLayout>
