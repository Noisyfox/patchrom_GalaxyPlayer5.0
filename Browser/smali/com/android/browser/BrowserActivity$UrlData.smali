.class Lcom/android/browser/BrowserActivity$UrlData;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlData"
.end annotation


# instance fields
.field final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUrl:Ljava/lang/String;

.field final mVoiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 6014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6015
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    .line 6016
    iput-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mHeaders:Ljava/util/Map;

    .line 6017
    iput-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 6018
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V
    .locals 2
    .parameter "url"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6020
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6021
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    .line 6022
    iput-object p2, p0, Lcom/android/browser/BrowserActivity$UrlData;->mHeaders:Ljava/util/Map;

    .line 6023
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6025
    iput-object p3, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 6029
    :goto_0
    return-void

    .line 6027
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method isEmpty()Z
    .locals 1

    .prologue
    .line 6032
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIn(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 6040
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 6041
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 6045
    :goto_0
    return-void

    .line 6043
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
