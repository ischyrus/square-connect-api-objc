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


#import "SQCatalogObject.h"
#import "SQOrder.h"
@protocol SQCatalogObject;
@class SQCatalogObject;
@protocol SQOrder;
@class SQOrder;



@protocol SQPaymentLinkRelatedResources
@end

@interface SQPaymentLinkRelatedResources : SQObject

/* The order associated with the payment link. [optional]
 */
@property(nonatomic) NSArray<SQOrder>* orders;
/* The subscription plan associated with the payment link. [optional]
 */
@property(nonatomic) NSArray<SQCatalogObject>* subscriptionPlans;

@end
