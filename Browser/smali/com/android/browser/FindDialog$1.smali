.class Lcom/android/browser/FindDialog$1;
.super Landroid/os/Handler;
.source "FindDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/FindDialog;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/browser/FindDialog$1;->this$0:Lcom/android/browser/FindDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/FindDialog$1;->this$0:Lcom/android/browser/FindDialog;

    iget-object v1, v1, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/FindDialog$1;->this$0:Lcom/android/browser/FindDialog;

    #getter for: Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/browser/FindDialog;->access$000(Lcom/android/browser/FindDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
