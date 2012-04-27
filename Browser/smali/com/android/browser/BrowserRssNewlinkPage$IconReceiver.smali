.class Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;
.super Ljava/lang/Object;
.source "BrowserRssNewlinkPage.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserRssNewlinkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserRssNewlinkPage;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserRssNewlinkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserRssNewlinkPage;Lcom/android/browser/BrowserRssNewlinkPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;-><init>(Lcom/android/browser/BrowserRssNewlinkPage;)V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    iget-object v1, p0, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    #getter for: Lcom/android/browser/BrowserRssNewlinkPage;->mAdapter:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;
    invoke-static {v1}, Lcom/android/browser/BrowserRssNewlinkPage;->access$100(Lcom/android/browser/BrowserRssNewlinkPage;)Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRssNewlinkPage;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method
