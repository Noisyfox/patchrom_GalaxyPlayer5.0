.class Lcom/android/browser/ActiveTabsPageGestureDetector$2;
.super Ljava/lang/Object;
.source "ActiveTabsPageGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPageGestureDetector;->interceptMotionEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPageGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    #getter for: Lcom/android/browser/ActiveTabsPageGestureDetector;->mCheckMobilePage:Z
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPageGestureDetector;->access$200(Lcom/android/browser/ActiveTabsPageGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    #getter for: Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPageGestureDetector;->access$000(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BitmapWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->abortAnimation()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    #getter for: Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPageGestureDetector;->access$000(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BitmapWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onPaused()V

    .line 138
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    #getter for: Lcom/android/browser/ActiveTabsPageGestureDetector;->mBitmapWebView:Lcom/android/browser/BitmapWebView;
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPageGestureDetector;->access$000(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BitmapWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onResumed()V

    .line 139
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPageGestureDetector$2;->this$0:Lcom/android/browser/ActiveTabsPageGestureDetector;

    #getter for: Lcom/android/browser/ActiveTabsPageGestureDetector;->mBrowserActivity:Lcom/android/browser/BrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPageGestureDetector;->access$100(Lcom/android/browser/ActiveTabsPageGestureDetector;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->openActiveTabsPage()V

    .line 140
    return-void
.end method
