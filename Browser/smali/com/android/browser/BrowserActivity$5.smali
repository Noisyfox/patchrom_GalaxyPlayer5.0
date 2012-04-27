.class Lcom/android/browser/BrowserActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 547
    .local v8, packageName:Ljava/lang/String;
    const-string v15, "android.intent.extra.REPLACING"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 549
    .local v14, replacing:Z
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-static {}, Lcom/android/browser/BrowserActivity;->access$500()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v15, v0

    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    #calls: Lcom/android/browser/BrowserActivity;->packageChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Z)V

    .line 559
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 560
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 562
    .local v12, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v15, 0x1000

    :try_start_0
    invoke-virtual {v13, v8, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 567
    if-eqz v12, :cond_0

    .line 568
    iget-object v10, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 569
    .local v10, permissions:[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 572
    const/4 v9, 0x0

    .line 573
    .local v9, permissionOk:Z
    move-object v4, v10

    .local v4, arr$:[Ljava/lang/String;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v11, v4, v6

    .line 574
    .local v11, permit:Ljava/lang/String;
    const-string v15, "android.webkit.permission.PLUGIN"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 575
    const/4 v9, 0x1

    .line 579
    .end local v11           #permit:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$5;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v15, v0

    invoke-static {v15}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v15

    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/PluginManager;->refreshPlugins(Z)V

    goto :goto_0

    .line 564
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #permissionOk:Z
    .end local v10           #permissions:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 565
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 573
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #permissionOk:Z
    .restart local v10       #permissions:[Ljava/lang/String;
    .restart local v11       #permit:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
