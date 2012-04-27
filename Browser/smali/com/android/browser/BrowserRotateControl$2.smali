.class Lcom/android/browser/BrowserRotateControl$2;
.super Ljava/lang/Object;
.source "BrowserRotateControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserRotateControl;->finalizeWebViewRotationStates()V
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
    .line 197
    iput-object p1, p0, Lcom/android/browser/BrowserRotateControl$2;->this$0:Lcom/android/browser/BrowserRotateControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resize plugins for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl$2;->this$0:Lcom/android/browser/BrowserRotateControl;

    iget-object v2, v2, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl$2;->this$0:Lcom/android/browser/BrowserRotateControl;

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl$2;->this$0:Lcom/android/browser/BrowserRotateControl;

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->scaleAllPlugins()V

    .line 203
    :cond_0
    return-void
.end method
