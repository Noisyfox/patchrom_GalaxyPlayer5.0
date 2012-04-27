.class Lcom/android/browser/BrowserHomepagePreference$1;
.super Ljava/lang/Object;
.source "BrowserHomepagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHomepagePreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHomepagePreference;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHomepagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    #getter for: Lcom/android/browser/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/BrowserHomepagePreference;->access$000(Lcom/android/browser/BrowserHomepagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {v1}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 65
    return-void
.end method
