#import <Foundation/Foundation.h>
#import "SQCreateLocationRequest.h"
#import "SQCreateLocationResponse.h"
#import "SQListLocationsResponse.h"
#import "SQRetrieveLocationResponse.h"
#import "SQUpdateLocationRequest.h"
#import "SQUpdateLocationResponse.h"
#import "SQApi.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SQLocationsApi: NSObject <SQApi>

extern NSString* kSQLocationsApiErrorDomain;
extern NSInteger kSQLocationsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CreateLocation
/// Creates a [location](https://developer.squareup.com/docs/locations-api). Creating new locations allows for separate configuration of receipt layouts, item prices, and sales reports. Developers can use locations to separate sales activity through applications that integrate with Square from sales activity elsewhere in a seller's account. Locations created programmatically with the Locations API last forever and are visible to the seller for their own management. Therefore, ensure that each location has a sensible and unique name.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateLocationResponse*
-(NSURLSessionTask*) createLocationWithBody: (SQCreateLocationRequest*) body
    completionHandler: (void (^)(SQCreateLocationResponse* output, NSError* error)) handler;


/// ListLocations
/// Provides details about all of the seller's [locations](https://developer.squareup.com/docs/locations-api), including those with an inactive status.
///
/// 
///  code:200 message:"Success"
///
/// @return SQListLocationsResponse*
-(NSURLSessionTask*) listLocationsWithCompletionHandler: 
    (void (^)(SQListLocationsResponse* output, NSError* error)) handler;


/// RetrieveLocation
/// Retrieves details of a single location. Specify \"main\" as the location ID to retrieve details of the [main location](https://developer.squareup.com/docs/locations-api#about-the-main-location).
///
/// @param locationId The ID of the location to retrieve. Specify the string \&quot;main\&quot; to return the main location.
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveLocationResponse*
-(NSURLSessionTask*) retrieveLocationWithLocationId: (NSString*) locationId
    completionHandler: (void (^)(SQRetrieveLocationResponse* output, NSError* error)) handler;


/// UpdateLocation
/// Updates a [location](https://developer.squareup.com/docs/locations-api).
///
/// @param locationId The ID of the location to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateLocationResponse*
-(NSURLSessionTask*) updateLocationWithLocationId: (NSString*) locationId
    body: (SQUpdateLocationRequest*) body
    completionHandler: (void (^)(SQUpdateLocationResponse* output, NSError* error)) handler;



@end
