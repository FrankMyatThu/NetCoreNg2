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
	var ExpiredAt = xx/xx/xxxx 8:15 AM;
	var TimeToBeRefresh = GetTotalMilliSecond(GetTotalMinutes(ExpiredAt - CurrentTime));
	var MaxAllowedTimeToBeIdle = TimeToBeRefresh;
	setTimeout(JWTTokenRefresher, TimeToBeRefresh);	
	onInactive(MaxAllowedTimeToBeIdle, logout);
	function JWTTokenRefresher(){
		// Replace JWTToken in background without notifying user.
		// update 
			// TimeToBeRefresh
			// MaxAllowedTimeToBeIdle
	}
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
	</script>
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------