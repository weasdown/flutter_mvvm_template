# model

Add a folder for each type of model you want the API to serve. 
For example, to serve bookings, add a folder called `booking`.

Within each model folder, add a file called `[type]_api_model.dart` (e.g. `booking_api_model.dart`). 
You can also use the `freezed` package to generate files `[type]_api_model.freezed.dart` and `[type]_api_model.g.dart`. 
