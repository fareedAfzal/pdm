import Foundation


let kheader : [String : String] = ["Content-Type":"application/json"]

let kbaseURL = "http://staging.oqh.obm.mybluehost.me/"
let kFbUrl = "https:carigologistics.com/signin_with_facebook"
let kFcmTokenUrl = "https:carigologistics.com/user/updateFcmToken"
let kFetchCategoriesURL = "https:carigologistics.com/get_categories"
let kGMS_APIKEY = "AIzaSyCFispDflTAC3cJCZHJHiKA9ESeVOLaUNI"


//MARK: identifiers for pick up and drop off
var kPickUpEdited = false
var kPickUpAddress = ""
var kDropOffAddress = ""
var kDropOffDetails : [String] = []
var kDropOffTitle : [String] = []
var kconfirm = true

//MARK: Nib Names
let kFirstOrderViewController = "FirstOrderViewController"
let kShareLocationViewController = "ShareLocationViewController"
let kOrderViewController = "OrderViewController"
let kMyOrderViewController = "MyOrderViewController"
let kSideTableViewCell = "SideTableViewCell"
let kScheduleAtTableViewCell = "ScheduleAtTableViewCell"
let kdropOffDetailsTableViewCell = "dropOffDetailsTableViewCell"
let kOrderDetailsTableViewCell = "OrderDetailsTableViewCell"
let kOrderViewCell = "CustomTableViewCell"
//MARK: GMS App Keys
//let kGMS_APIKEY = "AIzaSyCyV-W2h4n_Plm-GhBb8VCKD4F5s5hC6oQ"
//let kGMS_APIKEY = "AIzaSyCFispDflTAC3cJCZHJHiKA9ESeVOLaUNI"

//MARK: API extended URLs
let kSignUpwithEmail = "signup_with_email"
let kSigninWithFacebook = "signin_with_facebook"
let kMobileCode = "login_with_mobile"
let kconfirm_mobile = "confirm_mobile"
let kLoginWithEmail = "login_with_email"
let kForgetPassword = "forgot_password"
let KUserExist = "User already exist. Please signup with a new user or login."
let kProfileInfo = "update_profile_information"
let kUpdateProfilePicture = "update_profile_picture"
let kChangePassword = "change_password"
let kGetCompleteOrder = "get_complete_orders"
let kGetUpcomingOrder = "get_upcoming_orders"
let kPlaceOrderNow = "place_order_now"
let kGetEstimation = "get_estimations"
let kGetOrderStatus = "get_order_status"
let kGetOngoingOders = "get_ongoing_orders"
let kget_orders = "get_orders"
let kfind_driver = "find_driver"
let kScheduleOrder = "schedule_order"
let kpre_booking_order = "pre_booking_order"
let krate_value = "rate_value"
let krate_comment = "rate_comment"
let kskiped_value = "skiped"
let kProfileUpdated = "Profile updated successfully"
let kUserCancelOrder = "user_cancel_order"
let kuser_order_ratings = "user_order_ratings"
let kaverage_rating = "average_rating"
let kDriver_carriers = "Driver_carriers"
let kcheck_discount = "check_discount"
let kestimated_fare = "estimated_fare_ios"
let kestimated_calculations = "estimated_calculations"
let kis_discounted_order = "is_discounted_order"

let klogout = "logout"
let kdis_amount = "dis_amount"
let kdis_percentage = "dis_percentage"
let kisDiscOnOrder = "isDiscOnOrder"
let kisDiscOnCard = "isDiscOnCard"
let kisDicOnMobile = "isDiscOnMobile"
let kisDiscOnOrderBased = "isDiscOnOrderBased"
let kPercentDiscOnCard = "cardDiscount"
let kPercentDiscOnMobile = "mobileDiscount"
let kPercentDiscOrderBased = "orderBasedDiscount"
let kIsCardSelected = "isCardSelected"
let kIsMobileSelected = "isMobileSelected"
let kIsCashSelected = "isCashSelected"

//MARK: API constants
let kimagePng = "image/png"
let kphoto = "image_file"
let kimage = "image"
let kbasePrice = "basePrice"
let kpricePerKm = "pricePerKm"
let kpricePerMinute = "pricePerMinute"
let kimage_url = "image_url"
let kmessage = "message"
let kbaseAddress = "baseAddress"
let kfinal_amount = "final_amount"
let kstatus = "status"
let kok = "ok"
let kOK = "OK"
let kOk = "Ok"
let kuser = "user"
let kAPI = "apiKey"
let kapiKey = "api_key"
let kFcmToken = "fcm_token"
let kvehicle_id = "vehicle_id"
let klocations_detail = "locations_detail"
let kApiKey = "1234567890"
let kemail = "email"
let kpassword = "password"
let kfull_name = "full_name"
let kmobileNumber = "mobile_number"
let kdistance = "distance"
let kduration = "duration"
let kmobile = "mobile_number"
let kMOBILE = "mobile"
let kdiscount_enable = "discount_enable"
let kdiscount_detail = "discount_detail"
let kdis_on_card = "dis_on_card"
let kdis_on_mobile = "dis_on_mobile"
let kdis_on_order_based = "dis_on_order_based"
let kenable_on_card = "enable_on_card"
let kenable_on_mobile = "enable_on_mobile"
let kenable_on_order = "enable_on_order"
//let kverifyCode = "verification_code"
let kverifyCode = "Verification Code"
let kuserID = "user_id"
let kUserId = "019"
let kprofilePicture = "picture"
let kprofileImage = "profile_image"
let kPlzGiveRating = "Please give rating to your driver."
let kFailedDirection = "Failed to find the Direction. Please enter nearby location."
let kCannot_connect_right_now_Please_check_internet_connection = "Cannot connect right now please check internet connection"
let kCannotConnect = "Cannot connect right now. Please try again later."
var kNoDriverFound = "Oops! No driver found please try again.You can place this order again in My order section "
let kErrorResponse = "Error in processing response"
let korderDetail = "order_detail"
let korders = "orders"
let korderScheduleAt = "order_schedule_at"
let korderEndTime = "order_end_time"
var korderPickUp = "order_pickup"
var korderPickupLat = "lat"
var korderPickupLng = "lng"
var korderPickupStreetAddress = "street_address"
var kaddress = "address"
var kmarkerId = "markerId"

var kadd_url = "add_url"
var kstatus_Value = "status"
var kis_discount = "is_discount"
var kcardDiscount = "cardDiscount"
var kmobileDiscount = "mobileDiscount"
var kOrderBaseDiscount = "OrderBaseDiscount"


var klat = "lat"
var klng = "lng"
var korder_created_at = "order_created_at"
var korder_complete_date = "order_complete_date"
var kstreetAddress = "street_address"
var korderDropOff = "order_dropoff"
var korderDropOffLat = "lat"
var korderDropOffLng = "lng"
var kdropOffStreetAddress = "street_address"
var korderID = "order_id"
var korder_id = "order_id"
var korderStartTime = "order_start_time"
var korderStatus = "order_status"
var kvehicleType = "vehicle_type"
var kdata = "data"
var korder_type = "order_type"
//var korderScheduleAt = "order_schedule_at"
var kschedule_date = "schedule_date"
var kitemDetails  = "item_details"
var kitemDescription = "item_description"
var kdescription = "description"
var kweight = "weight"
var kquantity = "quantity"
var kitemQuantity = "item_quantity"
var kitemName = "item_name"
var kitemID = "item_id"
var kitemWeight = "item_weight"
var kdriverDetail = "driver_details"
var kdriverRating = "driver_rating"
var krating = "rating"
var kratings = "ratings"
var kuser_comments = "user_comments"
var kuser_rate = "user_rate"
var kdriver_comments = "driver_comments"
var kdriver_rate = "driver_rate"
var kbike = "Bike"
var kminiVan = "Mini Van"
var ktruck = "Truck"
var kvan = "Van"
var kflatbedTruck = "Flatbed Truck"
var kcallback_flutter = "callback_flutter"
var kcreated_at = "created_at"
var kdeleted_at = "deleted_at"
var kdistance_price = "distance_price"
var kduration_price = "duration_price"
var kestimated_dur_price = "estimated_dur_price"
var kestimated_duration = "estimated_duration"
var kIs_discount = "Is_discount"
var kdisco_on_card = "disco_on_card"
var kdisco_on_mobile = "disco_on_mobile"
var kdisco_on_order_based = "disco_on_order_based"
var kdisc_on_order_based = "disc_on_order_based"
var kdisc_on_mobile = "disc_on_mobile"
var kdisc_on_card = "disc_on_card"
//                        id = 933;
var klocation_id = "location_id"
var korderid = "orderid"
let kupdateFCMToken = "user/updateFcmToken"
let kFCMToken = "fcm_token"
var kpaid_by = "paid_by"
var kpaid_status = "paid_status"
var kpayment_mode = "payment_mode"
var kreceiver_mobile = "receiver_mobile"
var kreceiver_country_code = "receiver_country_code"
var kCountry_Code = "country_code"
var ktax = "tax"
var ktotal = "total"
var ktransaction_fee = "transaction_fee"
var kupdated_at = "updated_at"

let kplatform = "platform"




var kdriverLocation = "driver_location"
var kdriverLat = "lat"
var kdriverLng = "lng"
var kdriverStreetAddress = "street_address"
var kdriverName = "driver_name"
var kdriverProfile = "driver_profile"
var kdriverContact = "driver_contact"
var kestimatedDuration = "estimated_duration"
var kestimatedPrice = "estimated_price"
var kestimatedDistance = "estimated_distance"
let kestimatedDetail = "estimated_detail"
let ksuggestedVehicleType = "suggested_vehicle_type"
let kdriverDetails = "driver_details"
let korderPickupStartingTime = "starting_time"
let korderPickupArrivalTime = "arrival_time"
let kvehicleDetails = "vehicle_details"
let kcustomerAds = "customer_ads"
let ktype = "type"
let kitems = "items"
let kitem = "item"
let ktransections = "transections "
let kpriority = "priority"

let kIndex = "index"
let kvehicleNumber = "vehicle_no"
let kEmpty = ""
let kEmptyd = "No driver found"
let kUserNotFound = "User not found"
let kReOrderTitle = "Reorder!"
let kReorderDetail = "Are you sure you want to reorder?"
let kOrigin = "origin"
let kDestination = "destination"
let kVerificationCode = "verification_code"
let kGetCourierCompanies = "get_courier_companies"
let kget_specific_order = "get_specific_order"
let kget_customer_ads = "get_customer_ads"
//API Change password
let kOldPassword = "old_password"
let kNewPassword = "new_password"

//API Orders
let kFilter = "filter"
let kOrderFilter = "Today"
let kOngoingOrder = "ongoingorders"
let kPreOrder = "preorders"
let kCompleteOrder = "completedorders"
let kCompleted = "completed"
let kStarted = "started"
let kAccept = "accept"
let kORDER = "order"
//API for direction
let kDirectionAPIOrigin = "https://maps.googleapis.com/maps/api/directions/json?origin="
let kDirectionAPIDestination = "&destination="
let kDirectionAPIkey = "&key="

//API for facebook
let kfullName = "full_name"
let kfbToken = "fb_token"

//API for Update profile information
let kImage = "image_file"

//API for schedule order
let korder_detail = "order_detail"
let kPickUp = "pickUp"
let kArrivedPickUp = "arrivedpickUp"
let kpickup = "pickup"
let kDropOff = "dropoff"
let kOrderTime = "order_time"
let kStartingTime = "starting_time"
let kEstimatedPrice = "etimated_price"
let kEstimatedTime = "estimated_time"
let kEstimatedDistance = "estimated_distance"
let kItemDetails = "item_details"
let kItemId = "item_id"
let kItemName = "item_name"
let kitem_type = "item_type"
let kID = "id"
let kItemQuantity = "item_quantity"
let kItemWeight = "item_weight"
let kItemDescription = "item_description"
let kVehicleType = "vehicle_type"
let kordersID = "order_id"
let kcargo_service_id = "cargo_service_id"
let kdriver = "driver"
let kcarrierName = "carrier_name"
let kdriverID = "driver_id"
let kMobile = "mobile"
let kcarriers = "carriers"
let kcarrier_image = "carrier_image"
let kd_on_card = "d_on_card"
let kd_on_mobile = "d_on_mobile"
let kd_on_order_based = "d_on_order_based"
//API for drop off
let kRoutes = "routes"
let kPolyLine = "overview_polyline"
let kPoints = "points"

//MARK: Testing
var korderLater : Bool = false

//MARK: URLS for About Us screen
let kGoogle = "https://www.google.com"
let kFacebook = "https://m.facebook.com/Carigogh/?ref=bookmarks"
let kTwitter = "https://twitter.com/Carigogh?s=08"
let kInstagram = "https://instagram.com/carigogh?utm_source=ig_profile_share&igshid=1mdepxkgzdqrk"
let kWebsite = "https://carigologistics.com/"
let kTermOfService = "https://carigologistics.com/terms-and-conditions.php"
let kAcknowledgement = "https://carigologistics.com/acknowledgement.php"
let kPrivacyPolicy = "https://carigologistics.com/privacy-policy.php"
let kBlog = "https://carigologistics.com/blog.php"
let kFacebook_URL = "www.facebook.com/carigo"
let kWebsite_URL = "www.carigologistics.com"
let kTwitter_URL = "www.twitter.com/carigo"
let kInstagram_URL = "www.instagram.com/carigo"


//MARK: Subjects for alerts
let kAlert = "Alert"
let kScheduleOrderAlert = "Schedule order"
let kmissingNumber = "Phone number is missing"

//MARK: Messages for alerts
let kScheduleOrderMsg = "Your order has been placed successfully."
let kValidEmail = "Please enter a valid email address"
let kValidPhone = "Please enter a 9 or 10 digit valid phone number"
let kRemoveDropOff = "Are you sure you want to remove drop off?"
let kLogoutConfirmation = "Are you sure you want to logout?"
let kEnterDataInQuantity = "Please enter data in quantity"
let kSelectDateAndTime = "Please select date and time"
let kSelectDateAndTimeRange = "The schedule time should be after an hour from current time"
let kSelectDateAndTimeRangeSchedule = "The schedule time should be after an hour from current time. YOu should change your selected time again."
let kMailMessage = "Check out Carigo, you can use it to order for deliveries of goods,track your goods and make multiple stops in one trip. Download it for free here http://"
let kIncorrectEmailPassword = "You email or password is incorrect. Please try again!"
let kApiError = "Error in processing response"
let kInternetError = "Internet failure. Please try again."
let kCouldnotSendMessage = "Could not send email"
let kDeviceCouldnotSendMessage = "Your device could not send email"
let kPasswordMatch = "Password updated successfully"
let kPasswordMisMatch = "Password don't match"
let kFillAllFields = "Please fill all the fields"
let kPassAndConfirmPassMisMatch = "Password and confirm password do not match"
let kEnterEmail = "Please enter email to proceed"
let kUserCancelledLogin = "User cancelled login"
let kTryAgain = "Old password is incorrect"
let kProfileUpdate = "Your profile has been updated successfully"
let kFetchingOrders = "Fetching orders"

//MARK: Cell identifiers
let kScheduleCell = "scheduleCell"
let kinvoiceCell = "invoiceCell"
let kOrderDetail = "orderDetailCell"
let kOrderCell = "customCell"
let ksideTableViewCell = "sideTableViewCell"

//MARK: Assign value to identifiers
let kEmptyWeight = "--"

//MARK: Schedule order
let kDropOffOrder = "Drop off"
let kUnPaid = "Unpaid"
//MARK: Confirm
let kFood = "Food"
let kcash = "cash"
let kcard = "card"
let kmobile_money = "mobile money"

let ksender = "sender"
let krecipient = "recipient"

//let kFood = "Food"
let kJewellery = "Jewellery"
let kFurniture =  "Furniture"
let kElectricalAppliances =  "Electrical Appliances"
let kCake =  "Cake"
let kGlasswareFragile =  "Glassware/Fragile items"
let kOther = "Other"
let kKg = "kg"
let kLbs = "lbs"
let kTon = "ton"
let kGhana = "GH"
let kCancel = "Cancel"

//MARK: My Order
let kMonth = "This Month"
let kYear = "This Year"
let kAll = "All"
let kToday = "Today"

//MARK: Order
let kOrderBus = "OrderBus"
let kOrderSmallTruck = "OrderSmallTruck"
let kOrderTuck = "OrderTruck"
let kOrderScooter = "OrderScooter"
let kOrderFlatTruck = "OrderFlatTruck"
let kOrderVehicletype = "Vehicle type:"

//MARK: SideMenu
let kHome = "Home"
let kProfile = "Profile"
let kMyOrder = "My Order"
let kPayment = "Payment"
let kAbout = "About"
let kContactUs = "Contact Us"
let kShare = "Share"
let kLogout = "Logout"
let kInfo = "info@carigologistics.com"

//MARK: DropOff
let kTransform = "transform.scale"
let kScale = "scale"
let kOpacity = "opacitys"

//MARK: Pick Up
let kDateFormat = "yyyy/MM/dd HH:mm"
let kLocale = "en_US_POSIX"
let kTruck = "Truck"
let kBusBorder = "BusBorder"
let kRoundScooter = "RoundScooter"
let kVan = "Van"
let kRoundLongTruck = "RoundLongTruck"
let kDropOffImage = "dropOff"
let karrivedDropOffImage = "arrivedDropOff"
let karrived = "arrived"
let kLocation = "Your Location"
let kComma = ", "

//MARK: Profile
let kFullName = "fullName"
let kMobileNumber = "mobileNumber"
let kCamera = "Camera"
let kChoose = "Choose"
let kGallery = "Gallery"
let kValueChanged = "value changed: "

//MARK: On boarding
let kNext = "Next"
let kFinish = "Finish"

//MARK: Sign In
let kLoginFailed = "Email or Password is incorrect"

//MARK: Sign Up
let kLogin = "LOGGED IN"
let kNotLogin = "NOT LOGGED IN"
let kPublicProfile = "public_profile"
let kUserFriends = "user_friends"
let kCustomFBLoginFailed = "Custom FB Login failed:"
let kCancelled = "Cancelled"
let kResult = "result"
let kloginCancelled = "Login cancelled"
let kLoginSuccessful = "Login successful"
let kFields = "fields"
let kIdNameEmail = "id, name, email"
let kFailedRequest = "Failed to start graph request;"
let kId = "id"


//MARK: Courier Company
let kCourier = "couriers"
let kCOmpanyName = "companyname"
let kCourierStatus = "status"
let kProfileImage = "profile_image"



//MARK: Generic
let kSearchText = "Searching For Driver \n"
let kSecondsToWaitForDriver = 60.0
let kDismissKeyboard = "dismissKeyboard"
let kError = "ERROR AUTO COMPLETE"
let kPickup = "Pick up"
let kCall = "TEL://0204598800"
let kIssue = "ISSUE!"
let kCannotSendText = "Cannot send text"
let kFont = "Menlo-Regular"
let kTextColor = "textColor"
let kZero = "0"
let kColon = ":"
let kEmailValidation = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
let kEmailTestFormat = "SELF MATCHES %@"
let kerror = "Error"
let kPic = "picture"
let kNote = "NOTE"
let kClose = "Close"
let kMe = "/me"
let kPhoto = " (photos only)."
let kHash = "#"
let kLine = " |"