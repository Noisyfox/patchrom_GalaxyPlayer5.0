.class Lcom/android/browser/BrowserActivity$27;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5225
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$27;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$27;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$27;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/BrowserActivity$27;->val$realm:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/BrowserActivity$27;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 5228
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->val$v:Landroid/view/View;

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5231
    .local v0, nm:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->val$v:Landroid/view/View;

    const v3, 0x7f0d005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5234
    .local v1, pw:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$27;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity$27;->val$realm:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/browser/BrowserActivity;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5236
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v5}, Lcom/android/browser/BrowserActivity;->access$2702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5238
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$27;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;
    invoke-static {v2, v5}, Lcom/android/browser/BrowserActivity;->access$2802(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 5239
    return-void
.end method
