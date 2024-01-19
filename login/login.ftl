<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
 <#if section = "form">
    <div id="kc-form">
      <div id="kc-form-wrapper">
<div id="content_write" style="width: 100%; height: 100%; position: relative; background: #F6F9FC;text-align:center;display:inline-flex;gap:0px;flex-direction: column;">
    <div style="width:100%">
      <div class="login_logo">
      </div>
    </div>
    <div style=" flex-direction: column; justify-content: center; align-items: center; display: inline-flex">
    <div  style="width:34%; height: 'auto';  background: white; box-shadow: 0px 8px 40px rgba(9, 44, 76, 0.08); border-radius: 20px; ">
	   <div style="padding-left: 40px; padding-right: 40px; padding-top: 20px; padding-bottom: 10px;flex-direction: column; justify-content: center; align-items: center; gap: 10px; display: inline-flex">
        <div style="flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="color: #00213D; font-size: 24px; font-family: Inter; font-weight: 700; line-height: 26px; word-wrap: break-word">Login</div>
        </div>
        <div style="align-self: stretch; height: 'auto'; flex-direction: column; justify-content: flex-start; align-items: center; gap: 16px; display: flex">
            <div style="align-self: stretch; height: 'auto'; flex-direction: column; justify-content: flex-start; align-items: center; gap: 20px; display: flex">
                
				
                <#if realm.password && social.providers??>
				<div id="kc-social-providers" style="width:100%;" >
               
                <p style="width:100%;display:none">${msg("identity-provider-login-label")}</p>
				<#list social.providers as p>
                <#if  p.displayName ="Google">
                <div style="width:100%;height:56px;">
				<a href="${p.loginUrl}"  style="text-decoration:none;width:100%;align-self: stretch;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #0B6AEA solid; justify-content: center; align-items: center; gap: 16px; display: inline-flex">
                    
					<div style="width: 24px; height: 24px; position: relative" class="google_icon">
                        
                    </div>
                    <div style="color: #0F62FE; font-size: 16px; font-family: Inter; font-weight: 700; line-height: 22px; word-wrap: break-word">Login with Google </div>
                    
				</a>
                </div>
                </#if>
				</#list>
				</div>
				</#if>
				
				
                <div style="align-self: stretch; justify-content: center; align-items: center; gap: 24px; display: inline-flex">
                    <div style="flex: 1 1 0; height: 0px; border: 1px #E2EBF3 solid"></div>
                    <div style="color: #4A5965; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">OR</div>
                    <div style="flex: 1 1 0; height: 0px; border: 1px #E2EBF3 solid"></div>
                </div>
				<form  style="width:100%;" id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div style="width:100%;align-self: stretch; height: auto; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 10px; display: flex">
                     
                     <div style="width:100%;align-self: stretch; height: 57px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start;  display: flex">
                    <label  id="log_lab_username"  style="display:none;color: #0B6AEA;margin-left:20px;margin-bottom:-5px;z-index:1; font-size: 12px;padding:0 8px;background:white; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">Email ID or Mobile number</label>
                    <input class= "log_btn_hover"  placeholder="Email ID or Mobile number" type="text" style="padding:16px 28px;align-self: stretch; height: 57px;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #0B6AEA solid; flex-direction: column; justify-content: flex-start; align-items: flex-start; display: flex"tabindex="1" id="username"  name="username" value="${(login.username!'')}"  type="text"  autocomplete="off"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                        />
                        <#if messagesPerField.existsError('username','password')>
                            <span style="margin-left:28px;color: #EB5757; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>
                    </div>

                    <div style="width:100%;align-self: stretch; height: 80px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-end; gap: 8px; display: flex">
                        <div style="display:inline-flex;align-items:center;justify-content:end;width:100%;">
                        <div style="width:100%;align-self: stretch; height: 57px; border-radius: 12px; flex-direction: column; justify-content: flex-start; align-items: flex-start;  display: flex">
                        <label  id="log_lab_password"  style="display:none;color: #0B6AEA;margin-left:20px;margin-bottom:-5px;z-index:1; font-size: 12px;padding:0 8px;background:white; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">Password</label>
                        <input class= "log_btn_hover" type="text" placeholder="Password" style="padding:16px 28px;height:57px;align-self: stretch;  padding-top: 16px; padding-bottom: 16px; background: white; border-radius: 12px; border: 1px #E2EBF3 solid; justify-content: space-between; align-items: flex-start; display: inline-flex"tabindex="2" id="password"  name="password" type="password" autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                        />
                        <#if messagesPerField.existsError('username','password')>
                        <span style="margin-left:28px;color: #EB5757; font-size: 12px; font-family: Inter; font-weight: 400; line-height: 15px; word-wrap: break-word">
                                ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                        </span>
                    </#if>
                        </div>
                        <input type="button" class="password_show_icon" value="1" id="password_icon" style="width:24px;height:24px;appearance: none;border:none;" />
                        </div>
                        <div style="padding-left: 28px; padding-right: 28px; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
                            <div style="color: #0B6AEA; font-size: 12px; font-family: Inter; font-weight: 400;  line-height: 15px; word-wrap: break-word">
                               <a tabindex="5" href="${url.loginResetCredentialsUrl}">Forgot Password?</a>
                            </div>
                        </div>
                    </div>
                     
                    <div id="kc-form-buttons" style="width:100%">
                       <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/> 
                      <input tabindex="4"  name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" style="border-color:#0B6AEA;width:100%;height:54px;align-self: stretch; padding-left: 32px; padding-right: 32px; padding-top: 16px; padding-bottom: 16px; background: #0B6AEA; border-radius: 8px; justify-content: center; align-items: center; display: inline-flex"/>
                    </div>


                </div>
            </div>
            <div style="align-self: stretch; justify-content: flex-end; align-items: center; gap: 8px; display: inline-flex">
                 <#if realm.rememberMe && !usernameHidden??>
                            <div >
                                <label>
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" class="checkbox_onclick" name="rememberMe" type="checkbox" style="appearance: none;width: 20px; height: 20px; position: relative; border-radius: 4px; border: 1px #0B6AEA solid" checked> 
                                    <#else>
                                        <input tabindex="3" id="rememberMe" class="checkbox_onclick" name="rememberMe" type="checkbox" style="appearance: none;width: 20px; height: 20px; position: relative; border-radius: 4px; border: 1px #0B6AEA solid" >
                                    </#if>
                                </label>
                            </div>
                        </#if>
                
                <div style="justify-content:start;display:flex;flex: 1 1 0; color: #0B6AEA; font-size: 12px; font-family: Inter; font-weight: 400;  word-wrap: break-word">Keep Me Logged In</div>
            </div>
			</form>
        </div>
        
		<div style="text-align:left;align-self: stretch;color: black; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word;"><span style="color: black; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word">By creating an account or logging in, you agree to CreamCollar’s </span><span style="text-decoration:underline; color: black; font-size: 12px; font-family: Inter; font-weight: 400;  word-wrap: break-word">Conditions of Use</span><span style="color: black; font-size: 12px; font-family: Inter; font-weight: 400; word-wrap: break-word"> and Privacy Policy.</span></div>
       </div>
        <div style="width:100%;  padding-top: 16px; padding-bottom: 16px; background: #F2F7FE; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; justify-content: center; align-items: flex-start; gap: 12px; display: inline-flex">
        <div style="color: #4A5965; font-size: 14px; font-family: Inter; font-weight: 400; line-height: 20px; word-wrap: break-word">New to CreamCollar?</div>
        <div style="color: #0B6AEA; font-size: 14px; font-family: Inter; font-weight: 400; text-decoration: underline; line-height: 20px; word-wrap: break-word"><a href="http://localhost:3000/register">Create Your Account</a></div>
    </div>
    </div>
    

	</div>
    </div>
      </div>
	</div>
</#if>
</@layout.registrationLayout>
