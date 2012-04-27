.class Lcom/android/browser/TitleBar$MyHandler;
.super Landroid/os/Handler;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TitleBar;


# direct methods
.method private constructor <init>(Lcom/android/browser/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/browser/TitleBar$MyHandler;->this$0:Lcom/android/browser/TitleBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/TitleBar;Lcom/android/browser/TitleBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/browser/TitleBar$MyHandler;-><init>(Lcom/android/browser/TitleBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/browser/TitleBar;->access$100()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/browser/TitleBar$MyHandler;->this$0:Lcom/android/browser/TitleBar;

    #getter for: Lcom/android/browser/TitleBar;->mTitleBg:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/TitleBar;->access$200(Lcom/android/browser/TitleBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/browser/TitleBar$MyHandler;->this$0:Lcom/android/browser/TitleBar;

    #getter for: Lcom/android/browser/TitleBar;->mRssIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/TitleBar;->access$300(Lcom/android/browser/TitleBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/browser/TitleBar$MyHandler;->this$0:Lcom/android/browser/TitleBar;

    #getter for: Lcom/android/browser/TitleBar;->mBrowserActivity:Lcom/android/browser/BrowserActivity;
    invoke-static {v0}, Lcom/android/browser/TitleBar;->access$400(Lcom/android/browser/TitleBar;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->showTitleBarContextMenu()V

    .line 158
    :cond_0
    return-void
.end method
