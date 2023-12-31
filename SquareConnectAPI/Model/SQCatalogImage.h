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





@protocol SQCatalogImage
@end

@interface SQCatalogImage : SQObject

/* The internal name to identify this image in calls to the Square API. This is a searchable attribute for use in applicable query filters using the [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects). It is not unique and should not be shown in a buyer facing context. [optional]
 */
@property(nonatomic) NSString* name;
/* The URL of this image, generated by Square after an image is uploaded using the [CreateCatalogImage](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/create-catalog-image) endpoint. To modify the image, use the UpdateCatalogImage endpoint. Do not change the URL field. [optional]
 */
@property(nonatomic) NSString* url;
/* A caption that describes what is shown in the image. Displayed in the Square Online Store. This is a searchable attribute for use in applicable query filters using the [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects). [optional]
 */
@property(nonatomic) NSString* caption;
/* The immutable order ID for this image object created by the Photo Studio service in Square Online Store. [optional]
 */
@property(nonatomic) NSString* photoStudioOrderId;

@end
