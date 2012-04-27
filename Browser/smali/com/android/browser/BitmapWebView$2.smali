.class Lcom/android/browser/BitmapWebView$2;
.super Ljava/lang/Object;
.source "BitmapWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebView;->update3DSurfaceLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 2747
    iput-object p1, p0, Lcom/android/browser/BitmapWebView$2;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/browser/BitmapWebView$2;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView$2;->this$0:Lcom/android/browser/BitmapWebView;

    iget-boolean v1, v1, Lcom/android/browser/BitmapWebView;->mVisible:Z

    #calls: Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/browser/BitmapWebView;->access$000(Lcom/android/browser/BitmapWebView;Z)V

    .line 2750
    return-void
.end method
