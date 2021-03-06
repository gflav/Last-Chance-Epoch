//WAI MissionMarker Addon by *hs-s.com | waTTe - www.banditparty.de	
private["_position","_name","_text","_Marker","_dot"];
_position = _this select 0;
	_name = _this select 1;
	//diag_log(format["Position: %1 Name: %2",_position, _name]);
	_text = format["%1 Mission active - Check your Map for the location",_name];
	systemChat _text;
			_Marker = createMarkerLocal ["Mission", _position];
			_Marker setMarkerColorLocal "ColorRed";
			_Marker setMarkerShapeLocal "ELLIPSE";
			_Marker setMarkerBrushLocal "Solid";
			_Marker setMarkerSizeLocal [300,300];
			_Marker setMarkerTextLocal _name;
			_dot = createMarkerLocal ["dot", _position];
			_dot setMarkerColorLocal "ColorBlack";
			_dot setMarkerTypeLocal "mil_dot";
			_dot setMarkerTextLocal _name;
			uiSleep 120; //Change time here again - makes sure that the Marker gets reset every 2 minutes, if you put the Weapon/Item down, the Marker will be removed after max. x seconds
			deleteMarkerLocal _Marker;
			deleteMarkerLocal _dot;