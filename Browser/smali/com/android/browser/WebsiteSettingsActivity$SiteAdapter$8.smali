.class Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;
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
    .line 540
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 542
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$Site;->removeFeature(I)V

    .line 544
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$500(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$Site;->getFeatureCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->mCurrentSite:Lcom/android/browser/WebsiteSettingsActivity$Site;
    invoke-static {v0, v1}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->access$502(Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;Lcom/android/browser/WebsiteSettingsActivity$Site;)Lcom/android/browser/WebsiteSettingsActivity$Site;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->askForOrigins()V

    .line 548
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter$8;->this$1:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->notifyDataSetChanged()V

    .line 549
    return-void
.end method
