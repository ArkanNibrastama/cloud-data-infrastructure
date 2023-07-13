import functions_framework

@functions_framework.http
def function_name(request):

    request_json = request.get_json(silent=True)

    return "Hello!"