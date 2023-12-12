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





@protocol SQCustomerGroup
@end

@interface SQCustomerGroup : SQObject

/* A unique Square-generated ID for the customer group. [optional]
 */
@property(nonatomic) NSString* _id;
/* The name of the customer group. 
 */
@property(nonatomic) NSString* name;
/* The timestamp when the customer group was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp when the customer group was last updated, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;

@end