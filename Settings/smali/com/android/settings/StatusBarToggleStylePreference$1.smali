.class Lcom/android/settings/StatusBarToggleStylePreference$1;
.super Ljava/lang/Object;
.source "StatusBarToggleStylePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/StatusBarToggleStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/StatusBarToggleStylePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarToggleStylePreference;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    #getter for: Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePageText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleStylePreference;->access$100(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    #getter for: Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/StatusBarToggleStylePreference;->access$000(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    #getter for: Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleStylePreference;->access$300(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    #getter for: Lcom/android/settings/StatusBarToggleStylePreference;->mCompact:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/StatusBarToggleStylePreference;->access$200(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference$1;->this$0:Lcom/android/settings/StatusBarToggleStylePreference;

    #calls: Lcom/android/settings/StatusBarToggleStylePreference;->setSettingsFromUI()V
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleStylePreference;->access$400(Lcom/android/settings/StatusBarToggleStylePreference;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
