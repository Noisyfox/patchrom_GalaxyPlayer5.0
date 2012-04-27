.class Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 521
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->removeFeature(I)V

    .line 525
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getFeatureCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$502(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Lcom/android/browser/WebsiteSettingsActivity$Site;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->askForOrigins()V

    .line 529
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$7;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->notifyDataSetChanged()V

    .line 530
    return-void
.end method
