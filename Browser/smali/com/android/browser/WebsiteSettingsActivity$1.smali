.class Lcom/android/browser/WebsiteSettingsActivity$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebsiteSettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebsiteSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/WebsiteSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/browser/WebsiteSettingsActivity$1;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 616
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 617
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 618
    invoke-static {}, Lcom/android/browser/WebStorageSizeManager;->resetLastOutOfSpaceNotificationTime()V

    .line 619
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$1;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    #getter for: Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;
    invoke-static {v0}, Lcom/android/browser/WebsiteSettingsActivity;->access$600(Lcom/android/browser/WebsiteSettingsActivity;)Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->askForOrigins()V

    .line 620
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity$1;->this$0:Lcom/android/browser/WebsiteSettingsActivity;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity;->finish()V

    .line 621
    return-void
.end method
