.class Lcom/android/browser/BrowserHistoryPage$IconReceiver;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserHistoryPage;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$IconReceiver;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    #getter for: Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
    invoke-static {v1}, Lcom/android/browser/BrowserHistoryPage;->access$000(Lcom/android/browser/BrowserHistoryPage;)Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHistoryPage;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 63
    return-void
.end method
