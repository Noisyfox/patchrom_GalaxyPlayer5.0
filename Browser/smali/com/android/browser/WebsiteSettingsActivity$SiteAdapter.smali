.class Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebsiteSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SiteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/browser/WebsiteSettingsActivity$Site;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocationAllowedIcon:Landroid/graphics/Bitmap;

.field private mLocationDisallowedIcon:Landroid/graphics/Bitmap;

.field private mResource:I

.field private mUsageEmptyIcon:Landroid/graphics/Bitmap;

.field private mUsageHighIcon:Landroid/graphics/Bitmap;

.field private mUsageLowIcon:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/browser/WebsiteSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/WebsiteSettingsActivity;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "rsc"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    .line 171
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 172
    iput p3, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mResource:I

    .line 173
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 174
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    .line 182
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    .line 184
    invoke-virtual {p1}, Lcom/android/browser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->askForOrigins()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Lcom/android/browser/WebsiteSettingsActivity$Site;)Lcom/android/browser/WebsiteSettingsActivity$Site;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    return-object p1
.end method

.method private addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "origin"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/WebsiteSettingsActivity$Site;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    check-cast v0, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 201
    .restart local v0       #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/browser/WebsiteSettingsActivity$Site;->addFeature(I)V

    .line 202
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .end local v0           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-direct {v0, p2}, Lcom/android/browser/WebsiteSettingsActivity$Site;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0       #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public askForGeolocation(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/WebsiteSettingsActivity$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    new-instance v1, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$2;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 241
    return-void
.end method

.method public askForOrigins()V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    new-instance v1, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$1;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 226
    return-void
.end method

.method public backKeyPressed()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 358
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->askForOrigins()V

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentSite()Lcom/android/browser/WebsiteSettingsActivity$Site;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    if-nez v0, :cond_0

    .line 331
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getFeatureCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 393
    if-nez p2, :cond_3

    .line 394
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03002a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 399
    .local v10, view:Landroid/view/View;
    :goto_0
    const v11, 0x7f0d0007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 400
    .local v8, title:Landroid/widget/TextView;
    const v11, 0x7f0d0093

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 401
    .local v6, subtitle:Landroid/widget/TextView;
    const v11, 0x7f0d000c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 402
    .local v2, icon:Landroid/widget/ImageView;
    const v11, 0x7f0d0092

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 403
    .local v1, featureIcon:Landroid/widget/ImageView;
    const v11, 0x7f0d0091

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 404
    .local v9, usageIcon:Landroid/widget/ImageView;
    const v11, 0x7f0d0090

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 405
    .local v3, locationIcon:Landroid/widget/ImageView;
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    if-nez v11, :cond_5

    .line 409
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    iget-object v12, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    const v13, 0x7f09009a

    invoke-virtual {v12, v13}, Lcom/android/browser/WebsiteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/browser/WebsiteSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 412
    .local v5, site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-virtual {v5}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v5}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getPrettyOrigin()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, subtitleText:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 415
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 416
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 417
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    invoke-virtual {v5}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 433
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 436
    invoke-virtual {v10, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v5}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, origin:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/browser/WebsiteSettingsActivity$Site;->hasFeature(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 440
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v11

    new-instance v12, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$3;

    invoke-direct {v12, p0, v9}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$3;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v4, v12}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 450
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/browser/WebsiteSettingsActivity$Site;->hasFeature(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 451
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v11

    new-instance v12, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;

    invoke-direct {v12, p0, v3}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$4;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v4, v12}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 505
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    .end local v7           #subtitleText:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v10

    .line 396
    .end local v1           #featureIcon:Landroid/widget/ImageView;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #locationIcon:Landroid/widget/ImageView;
    .end local v4           #origin:Ljava/lang/String;
    .end local v6           #subtitle:Landroid/widget/TextView;
    .end local v8           #title:Landroid/widget/TextView;
    .end local v9           #usageIcon:Landroid/widget/ImageView;
    .end local v10           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v10, p2

    .restart local v10       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 420
    .restart local v1       #featureIcon:Landroid/widget/ImageView;
    .restart local v2       #icon:Landroid/widget/ImageView;
    .restart local v3       #locationIcon:Landroid/widget/ImageView;
    .restart local v5       #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    .restart local v6       #subtitle:Landroid/widget/TextView;
    .restart local v7       #subtitleText:Ljava/lang/String;
    .restart local v8       #title:Landroid/widget/TextView;
    .restart local v9       #usageIcon:Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 422
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 465
    .end local v5           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    .end local v7           #subtitleText:Ljava/lang/String;
    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    iget-object v12, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    invoke-virtual {v12}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/browser/WebsiteSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    invoke-virtual {v11}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v4

    .line 471
    .restart local v4       #origin:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    invoke-virtual {v11, p1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getFeatureByIndex(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 473
    :pswitch_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v11

    new-instance v12, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$5;

    invoke-direct {v12, p0, v8, v6, v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$5;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v4, v12}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 486
    :pswitch_1
    const v11, 0x7f0900f5

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 487
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v11

    new-instance v12, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$6;

    invoke-direct {v12, p0, v6, v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$6;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v4, v12}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const v3, 0x1080027

    .line 512
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    invoke-virtual {v0, p3}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getFeatureByIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 515
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900eb

    new-instance v2, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;

    invoke-direct {v2, p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 536
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fa

    new-instance v2, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;

    invoke-direct {v2, p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;-><init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/WebsiteSettingsActivity$Site;

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 557
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public populateIcons(Ljava/util/Map;)V
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/WebsiteSettingsActivity$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v17, hosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 248
    .local v12, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 249
    .end local p1           #sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    .local v19, originIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 251
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 252
    .local v20, site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 253
    .local v15, host:Ljava/lang/String;
    const/16 v16, 0x0

    .line 254
    .local v16, hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    check-cast v16, Ljava/util/Set;

    .line 260
    .restart local v16       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    new-instance v16, Ljava/util/HashSet;

    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 258
    .restart local v16       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    .end local v15           #host:Ljava/lang/String;
    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    .end local v20           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "favicon"

    aput-object v7, v5, v6

    const-string v6, "bookmark = 1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 269
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_9

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    const-string v3, "url"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 272
    .local v25, urlIndex:I
    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 273
    .local v23, titleIndex:I
    const-string v3, "favicon"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 275
    .local v14, faviconIndex:I
    :cond_2
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 276
    .local v24, url:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 277
    .restart local v15       #host:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 278
    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 279
    .local v22, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 280
    .local v9, bmp:Landroid/graphics/Bitmap;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 281
    .local v11, data:[B
    if-eqz v11, :cond_3

    .line 282
    const/4 v3, 0x0

    array-length v4, v11

    invoke-static {v11, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 284
    :cond_3
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 285
    .local v18, matchingSites:Ljava/util/Set;
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 286
    .local v21, sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 287
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 294
    .restart local v20       #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 296
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->setTitle(Ljava/lang/String;)V

    .line 298
    :cond_6
    if-eqz v9, :cond_4

    .line 299
    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 303
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #data:[B
    .end local v18           #matchingSites:Ljava/util/Set;
    .end local v20           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    .end local v21           #sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    .end local v22           #title:Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 305
    .end local v14           #faviconIndex:I
    .end local v15           #host:Ljava/lang/String;
    .end local v23           #titleIndex:I
    .end local v24           #url:Ljava/lang/String;
    .end local v25           #urlIndex:I
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_9
    return-void
.end method

.method public populateOrigins(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/WebsiteSettingsActivity$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->clear()V

    .line 314
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 315
    .local v0, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 316
    .local v2, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 319
    .local v3, site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-virtual {p0, v3}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/WebsiteSettingsActivity$Site;>;"
    .end local v3           #site:Lcom/android/browser/WebsiteSettingsActivity$Site;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->notifyDataSetChanged()V

    .line 324
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    invoke-virtual {v4}, Lcom/android/browser/WebsiteSettingsActivity;->finish()V

    .line 327
    :cond_1
    return-void
.end method

.method public setIconForUsage(Landroid/widget/ImageView;J)V
    .locals 6
    .parameter "usageIcon"
    .parameter "usageInBytes"

    .prologue
    const/high16 v5, 0x40a0

    const-wide v3, 0x3fb999999999999aL

    .line 370
    long-to-float v1, p2

    const/high16 v2, 0x4980

    div-float v0, v1, v2

    .line 375
    .local v0, usageInMegabytes:F
    float-to-double v1, v0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 379
    :cond_2
    cmpl-float v1, v0, v5

    if-lez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public sizeValueToString(J)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/high16 v5, 0x4120

    .line 339
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity;->LOGTAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/WebsiteSettingsActivity;->access$100(Lcom/android/browser/WebsiteSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sizeValueToString called with non-positive value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v3, "0"

    .line 346
    :goto_0
    return-object v3

    .line 343
    :cond_0
    long-to-float v3, p1

    const/high16 v4, 0x4980

    div-float v0, v3, v4

    .line 344
    .local v0, megabytes:F
    mul-float v3, v0, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 345
    .local v2, truncated:I
    int-to-float v3, v2

    div-float v1, v3, v5

    .line 346
    .local v1, result:F
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
