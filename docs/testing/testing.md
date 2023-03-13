# Manual Testing

## Sign up using email, username and password 
## [Issue #15](https://github.com/mjjstockman/ecomm/issues/15)

The Signup page shows the following form

<img src="images/us-15/form-empty.png" alt="Signup form with e-mail, e-mail again, username, password and password again fields">


Form validation

<img src="images/us-15/form-invalid.png" alt="Signup form with invalid e-mail and username fields highlited in red with an error descriptionand red info icon">


Missing info
<img src="images/us-15/form-no-password.png" alt="SSignup form with missing password field warning">

Once filled in correctly...

<img src="images/us-15/form-complete.png" alt="Signup form with all fields correctly entered, shows no warning signs">


User shown success message and informed to verify email

<img src="images/us-15/verify-email-message.png" alt="Email sent message, asking user to check their email">


## Confirm Sign up via email
## [Issue #17](https://github.com/mjjstockman/ecomm/issues/17) 

User recieves an email

<img src="images/us-17/email.png" alt="The email a user recieves when they signup">


If user trys to login before confirming email

<img src="images/us-17/email-sent.png" alt="Message telling the user they need to confirm their email">


## Sign up using Google
## [Issue #16](https://github.com/mjjstockman/ecomm/issues/16)

Google Login button

<img src="images/us-16/google-login-button.png" alt="Login page with a button to login with Google">

Google choose account

<img src="images/us-16/google-choose-account.png" alt="General signin with Google, choose account page">

Google signin success

<img src="images/us-16/google-signin-success.png" alt="Message telling the user they successfully signed in">

## Log in using username / password
## [Issue #18](https://github.com/mjjstockman/ecomm/issues/18)

Login form

<img src="images/us-18/login-form.png" alt="Message telling the user they successfully signed in">

Logged in message

<img src="images/us-18/loggedin-message.png" alt="Message telling the user they successfully signed in">

## Login using username / password
## [Issue #19](https://github.com/mjjstockman/ecomm/issues/19)

Login form

<img src="images/us-18/login-form.png"  alt="Login form with username and asterisked out password filled in">

Signedin message

<img src="images/us-19/signedin-message.png"  alt="Message telling the user they successfully signed in">


## Forgot password
## [Issue #20](https://github.com/mjjstockman/ecomm/issues/20)

Password reset form

<img src="images/us-20/password-reset-form.png" alt="Form for user to enter their email and a button to reset password">

Password reset message

<img src="images/us-20/email-sent.png" alt="Message telling the user they have recieved an email">

User recieves email

<img src="images/us-20/email.png" alt="The email a user gets sent">

New password form

<img src="images/us-20/change-password-form.png" alt="Form to enter password twice">

Password changed message

<img src="images/us-20/success-message.png" alt="Message telling the user their password has been changed">

## Login state
## [Issue #21](https://github.com/mjjstockman/ecomm/issues/21)

nav-anonm

<img src="images/us-21/nav-anonymous.png" alt="Navigation bar with Sign Up and Login links at the far right">

nav-loggedin

<img src="images/us-21/nav-loggedin.png" alt="Navigation bar without Sign Up and Login links but a Logout link at the far right">

loggedin-msg

<img src="images/us-21/login-success-message.png" alt="Message telling the user they successfully signed in">


## Manual logout
## [Issue #22](https://github.com/mjjstockman/ecomm/issues/22)

Logout success message

<img src="images/us-22/logout-success-message.png" alt="Message telling the user they successfully signeded out">


## Add products through admin
## [Issue #24](https://github.com/mjjstockman/ecomm/issues/24)

Products in admin before

<img src="images/us-24/product-admin-before.png" alt="Products admin model showing short description and name for all 11 products">

Products in admin after

<img src="images/us-24/product-admin-after.png" alt="Products admin model showing newly added product">

Products on site before

<img src="images/us-24/menu-before.png" alt="Three burgers on the menu page">

Products on site after

<img src="images/us-24/menu-after.png" alt="Newly added product in the burger menu">


| Theme | Epic | Related User Stories | MOSCOW | Completed |
|--|--|--|--|--|
| Account Management | Sign up | [#15](https://github.com/mjjstockman/ecomm/issues/15) Sign up using email, username and password | Must have | Yes |
| 					| 			| [#16](https://github.com/mjjstockman/ecomm/issues/16) Sign up using Google | Should have | Yes |
| 					| 			| [#17](https://github.com/mjjstockman/ecomm/issues/17) Confirm Sign up via email | Should have | Yes |
| 					| Sign in | [#18](https://github.com/mjjstockman/ecomm/issues/18) Log in using username / password | Must have | Yes |
| 					| 		  | [#19](https://github.com/mjjstockman/ecomm/issues/19) Login using Google | Should have | Yes |
| 					| 			| [#20](https://github.com/mjjstockman/ecomm/issues/20) Forgot sign in info | Should have | Yes |
| 					| 			| [#21](https://github.com/mjjstockman/ecomm/issues/21) Login state | Should have |  Yes |
| 					| Log out | [#22](https://github.com/mjjstockman/ecomm/issues/22) Manual log out | Must have | Yes |
| 					| 			| [#23](https://github.com/mjjstockman/ecomm/issues/23) Automatic log out | Won't have | No |
| Products | Add products | [#24](https://github.com/mjjstockman/ecomm/issues/24) Add products through admin | Must have | Yes |
| 			| 				| [#20](https://github.com/mjjstockman/ecomm/issues/20) Add products through site | Must have |Yes |
| 			| View products| [#25](https://github.com/mjjstockman/ecomm/issues/25) View all products | Must have |  Yes |
| 			| 			|[#26](https://github.com/mjjstockman/ecomm/issues/26) View products by category | Must have | Yes |
| 			| 			| View new products | Won't have | No |
| 			| 			| [#26](https://github.com/mjjstockman/ecomm/issues/26) Search products | Should have |  Yes |
| 			| Edit products	|  [#27](https://github.com/mjjstockman/ecomm/issues/27) Edit products through site | Must have | Yes |
| 			|  				|  [#37](https://github.com/mjjstockman/ecomm/issues/37) Edit products through Django admin | Must have |  Yes |
| 			| Delete products	| [#38](https://github.com/mjjstockman/ecomm/issues/38) Delete products through admin | Must have | Yes |
| 			|           	| [#28](https://github.com/mjjstockman/ecomm/issues/28) Delete products through site | Must have | Yes |
| Cart	    | Make purchase | [#29](https://github.com/mjjstockman/ecomm/issues/29) Add item to cart | Must have |  Yes |
| 			|  				| [#30](https://github.com/mjjstockman/ecomm/issues/30) Change product quantity in cart | Should have | Yes |
| 			|  				| [#31](https://github.com/mjjstockman/ecomm/issues/31) Remove items from cart | Should have | Yes |
| 			|  				|  [#32](https://github.com/mjjstockman/ecomm/issues/32) See order total | Must have |  Yes |
| 			|  				| [#33](https://github.com/mjjstockman/ecomm/issues/33) Pay for goods | Must have | Yes |
| 			|  				|  [#34](https://github.com/mjjstockman/ecomm/issues/34) Know if an order was successful | Must have | Yes |
| 			|  				| [#35](https://github.com/mjjstockman/ecomm/issues/35) Email order confirmation | Should have | Yes |
| 	Profile |  Details		| [#40](https://github.com/mjjstockman/ecomm/issues/40) Save profile details | Should have | Yes |
|           |           	| [#41](https://github.com/mjjstockman/ecomm/issues/41) Edit profile details | Should have | Yes |
| 			|  				|  [#42](https://github.com/mjjstockman/ecomm/issues/42) View order history | Should have | Yes |
| FAQ		|  				|  [#43](https://github.com/mjjstockman/ecomm/issues/43) Submit a question | Must have | Yes |
|   		|  				|  [#44](https://github.com/mjjstockman/ecomm/issues/44) Submit an answer | Must have | Yes |
|   		|  				|  [#46](https://github.com/mjjstockman/ecomm/issues/46) Email when question answered | Could have | Yes |
| Events	|  				|  [#45](https://github.com/mjjstockman/ecomm/issues/45) See previous events | Should have | Yes |
| Marketing	|  				|  [#36](https://github.com/mjjstockman/ecomm/issues/20) Add Facebook page | Must have | Yes |
