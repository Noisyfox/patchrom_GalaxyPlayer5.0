.class Lcom/android/browser/BrowserRotateControl$1;
.super Ljava/lang/Object;
.source "BrowserRotateControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserRotateControl;->setWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserRotateControl;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserRotateControl;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/browser/BrowserRotateControl$1;->this$0:Lcom/android/browser/BrowserRotateControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl$1;->this$0:Lcom/android/browser/BrowserRotateControl;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateControl;->onSizeChanged()V

    .line 54
    return-void
.end method
