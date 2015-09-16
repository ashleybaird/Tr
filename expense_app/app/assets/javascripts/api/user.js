console.log("linked");

$(function(){

	function render() {
		$("#current_trip")
	}

	function addTrip() {
		var addATrip = {};
		addATrip.total = $("#total").val();
		addATrip.num_days = $("#number").val();
		addATrip.hotel = $("#hotel").val();
		addATrip.food = $("#food").val();
		addATrip.activity = $("#activity").val();
		addATrip.travel = $("#travel").val();

		$.ajax({
			url: "/api/users/:id/trips",
			method: "POST",
			data: addATrip
		}).done(function(addATrip){
			$("#total").val("");
			$("#number").val("");
			$("#hotel").val("");
			$("#food").val("");
			$("#activity").val("");
			$("#travel").val("");
		})
	};
	function newTrip() {
		$.ajax({
			url: "/api/users/:id/trips",
			data: {},
			success: function(){
				$("#newTrip").append($("#add_trip").text());
				$("#add").on("click", addTrip);
			} 	
		});


	};


	$("#new-trip").on("click", newTrip);
});
