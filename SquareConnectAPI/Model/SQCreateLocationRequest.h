#import <Foundation/Foundation.h>
#import "SQObject.h"

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


#import "SQLocation.h"
@protocol SQLocation;
@class SQLocation;



@protocol SQCreateLocationRequest
@end

@interface SQCreateLocationRequest : SQObject

/* The initial values of the location being created. The `name` field is required and must be unique within a seller account. All other fields are optional, but any information you care about for the location should be included. The remaining fields are automatically added based on the data from the [main location](https://developer.squareup.com/docs/locations-api#about-the-main-location). [optional]
 */
@property(nonatomic) SQLocation* location;

@end
