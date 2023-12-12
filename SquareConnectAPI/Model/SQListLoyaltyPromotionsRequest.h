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





@protocol SQListLoyaltyPromotionsRequest
@end

@interface SQListLoyaltyPromotionsRequest : SQObject

/* The status to filter the results by. If a status is provided, only loyalty promotions with the specified status are returned. Otherwise, all loyalty promotions associated with the loyalty program are returned. [optional]
 */
@property(nonatomic) NSString* status;
/* The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* The maximum number of results to return in a single paged response. The minimum value is 1 and the maximum value is 30. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSNumber* limit;

@end
