.class Lcom/android/browser/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Observer"
.end annotation


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 203
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/android/browser/BrowserSettings;

    move-object v1, v0

    .line 207
    .local v1, b:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 209
    .local v2, s:Landroid/webkit/WebSettings;
    iget-object v3, v1, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 218
    #getter for: Lcom/android/browser/BrowserSettings;->useWideViewPort:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 219
    #getter for: Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 220
    #getter for: Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    #getter for: Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$300(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 222
    #getter for: Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 224
    #getter for: Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 226
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$700()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 227
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 228
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 229
    #getter for: Lcom/android/browser/BrowserSettings;->navDump:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1000(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 230
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1100()Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 231
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1200()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 232
    #getter for: Lcom/android/browser/BrowserSettings;->lightTouch:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 233
    #getter for: Lcom/android/browser/BrowserSettings;->saveFormData:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 234
    #getter for: Lcom/android/browser/BrowserSettings;->rememberPasswords:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 235
    #getter for: Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 236
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1700()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 239
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 241
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 243
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 246
    #getter for: Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1800(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 247
    #getter for: Lcom/android/browser/BrowserSettings;->databaseEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1900(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 248
    #getter for: Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2000(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 249
    #getter for: Lcom/android/browser/BrowserSettings;->workersEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 250
    #getter for: Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 253
    #getter for: Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2300(Lcom/android/browser/BrowserSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 254
    #getter for: Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 255
    #getter for: Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2500(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 256
    #getter for: Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 258
    #calls: Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)V

    .line 259
    return-void
.end method
