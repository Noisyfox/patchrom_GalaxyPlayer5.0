.class final Lcom/android/browser/BrowserDebug$1;
.super Ljava/lang/Object;
.source "BrowserDebug.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDebug;->dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/browser/BrowserDebug$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, keyEvent:Landroid/view/KeyEvent;
    packed-switch p2, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 54
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 81
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserDebug$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 58
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0xc

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 59
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    goto :goto_1

    .line 62
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0xd

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 63
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    goto :goto_1

    .line 66
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0xe

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 67
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    goto :goto_1

    .line 70
    :pswitch_4
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0xf

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 71
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    goto :goto_1

    .line 74
    :pswitch_5
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 75
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
