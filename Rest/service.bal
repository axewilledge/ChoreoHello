import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Rest",
	id: "Rest-3c8f6273-322e-4cd9-840e-03ae9ba823a2"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greetingZZZ(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }






}
