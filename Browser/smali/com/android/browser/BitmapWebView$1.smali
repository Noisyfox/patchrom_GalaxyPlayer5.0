.class Lcom/android/browser/BitmapWebView$1;
.super Ljava/lang/Object;
.source "BitmapWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebView;->updateViewRectGL(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebView;

.field final synthetic val$viewRectBottom:I

.field final synthetic val$viewRectLeft:I

.field final synthetic val$viewRectRight:I

.field final synthetic val$viewRectTop:I


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/android/browser/BitmapWebView$1;->this$0:Lcom/android/browser/BitmapWebView;

    iput p2, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectLeft:I

    iput p3, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectTop:I

    iput p4, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectRight:I

    iput p5, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/browser/BitmapWebView$1;->this$0:Lcom/android/browser/BitmapWebView;

    iget v1, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectTop:I

    iget v3, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectRight:I

    iget v4, p0, Lcom/android/browser/BitmapWebView$1;->val$viewRectBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/BitmapWebView;->updateViewRect(IIII)V

    .line 2281
    return-void
.end method
