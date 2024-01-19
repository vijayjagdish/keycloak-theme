<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
<div id="content_write" style="width: 100%; height: 100%; position: relative; background: #F6F9FC;text-align:center;display:inline-flex;gap:32px;flex-direction: column;">
    <div style="width:100%">
      <div class="login_logo">
      </div>
    </div>
    <div style=" flex-direction: column; justify-content: center; align-items: center; gap: 48px; display: inline-flex">
    <div style="width:30%; height: 'auto'; padding-left: 40px; padding-right: 40px; padding-top: 32px; padding-bottom: 32px; background: white; box-shadow: 0px 8px 40px rgba(9, 44, 76, 0.08); border-radius: 20px; flex-direction: column; justify-content: center; align-items: center; gap: 48px; display: inline-flex">
        <div style="flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="color: #00213D; font-size: 24px; font-family: Inter; font-weight: 700; line-height: 26px; word-wrap: break-word">Forgot Password</div>
        </div>
        <div style="align-self: stretch; height: 'auto'; flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="align-self: stretch;flex-direction: column; justify-content: flex-start; align-items: center; gap: 40px; display: flex">
                
				
              
				<form  style="width:100%;" id="kc-reset-password-form" action="${url.loginAction}" method="post">
                <div style="width:100%;align-self: stretch;  flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 24px; display: flex">
                     
                     <div style="width:100%;align-self: stretch; height: 57px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start;  display: flex">
                    <label  id="log_lab_username"  style="display:none;color: #0B6AEA;margin-left:20px;margin-bottom:-5px;z-index:1; font-size: 12px;padding:0 8px;background:white; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">Enter your Email ID</label>
                    
					 <input type="text" id="username" name="username"  value="${(auth.attemptedUsername!'')}" class= "log_btn_hover"  placeholder="Enter your Email ID " type="text" style="padding:16px 28px;align-self: stretch; height: 57px;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #0B6AEA solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex" tabindex="1" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                        <#if messagesPerField.existsError('username','password')>
                            <span style="margin-left:28px;color: #EB5757; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>
                    </div>

                 
                    <div id="kc-form-buttons" style="width:100%">
                       <input  type="submit" value="${msg("doSubmit")}" style="border-color:#0B6AEA;width:100%;height:54px;align-self: stretch; padding-left: 32px; padding-right: 32px; padding-top: 16px; padding-bottom: 16px; background: #0B6AEA; border-radius: 8px; justify-content: center; align-items: center; display: inline-flex" />
                    </div>


                </div>
            </div>

            <div style="align-self: stretch; justify-content: flex-end; align-items: center; gap: 8px; display: inline-flex">
                <div style="justify-content:start;display:flex;flex: 1 1 0; color: #0B6AEA; font-size: 12px; font-family: Inter; font-weight: 400;  word-wrap: break-word"><span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span></div>
            </div>

			</form>
        </div>
        
		<div style="text-align:left;align-self: stretch;color: black; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word;"><span style="color: black; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word"><#if realm.duplicateEmailsAllowed>
            ${msg("emailInstructionUsername")}
        <#else>
            ${msg("emailInstruction")}
        </#if>
        </span></div>
    </div>
	</div>
    </div>
</#if>
</@layout.registrationLayout>
