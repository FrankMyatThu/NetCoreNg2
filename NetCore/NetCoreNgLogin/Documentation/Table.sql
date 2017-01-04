tbl_UserMaster
	ID
	Name
	Email
	Password
	SaltKey
	
tbl_UserDetail
	ID
	UserID
	ClientIPAddress
	ClientBrowserAgentInfo
	JwtHMACKey

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
ClientBrowser
	<body onload="onInactive(5000, logout);"></body>
	<script>
	/// Start - Token refresh logic 
	var ExpiredAt = xx/xx/xxxx 8:15 AM;	
	var TimeToBeRefresh = GetTotalMilliSecond(GetTotalMinutes(ExpiredAt - CurrentTime));	
	setTimeout(JWTTokenRefresher, TimeToBeRefresh);		
	function JWTTokenRefresher(){
		// Replace JWTToken in background without notifying user.
		// update 
			// cleartimeout and settimeout again for TimeToBeRefresh			
	}
	/// End - Token refresh logic 
	
	/// Start - session time out logic
	var MaxAllowedTimeToBeIdle = xxxxx;
	onInactive(MaxAllowedTimeToBeIdle, logout);
	function onInactive(millisecond, callback){
		var wait = setTimeout(callback, millisecond);               
		document.onmousemove = 
		document.mousedown = 
		document.mouseup = 
		document.onkeydown = 
		document.onkeyup = 
		document.focus = function(){
			clearTimeout(wait);
			wait = setTimeout(callback, millisecond);                       
		};
	}	
	function logout(){
		console.log('Logout');
	}
	/// End - session time out logic
	</script>

[Note] 
According to upper scenario, 
When user inactive for x minutes, 
then session can be time out 
even if background process received new token 
within 1 second before time out.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------