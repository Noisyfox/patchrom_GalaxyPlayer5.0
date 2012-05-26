.class public Lcom/android/settings/LocationSettings;
.super Landroid/preference/PreferenceActivity;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocationSettings$1;,
        Lcom/android/settings/LocationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAutoAGPS:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mGpsConfig:Landroid/preference/Preference;

.field private mLBSApps:Landroid/preference/PreferenceCategory;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mNtpServer:Ljava/lang/String;

.field private mSuplHost:Ljava/lang/String;

.field private mSuplPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateToggles()V

    return-void
.end method

.method private buildLBSApps()V
    .locals 18

    .prologue
    const-string v14, "lbs_apps"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocationSettings;->mLBSApps:Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .local v6, intent:Landroid/content/Intent;
    const/16 v14, 0x1000

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .local v11, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .local v10, pkg:Landroid/content/pm/PackageInfo;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_2

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v8, :cond_2

    aget-object v9, v2, v4

    .local v9, perm:Ljava/lang/String;
    const-string v14, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_3
    new-instance v13, Landroid/preference/Preference;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .local v13, pref:Landroid/preference/Preference;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, label:Ljava/lang/String;
    if-nez v7, :cond_4

    iget-object v7, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_4
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, icon:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_5

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_5
    invoke-virtual {v13, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v5}, Landroid/preference/Preference;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.VIEW"

    const-string v15, "package"

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6       #intent:Landroid/content/Intent;
    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.applications.InstalledAppDetails"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocationSettings;->mLBSApps:Landroid/preference/PreferenceCategory;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #label:Ljava/lang/String;
    .end local v13           #pref:Landroid/preference/Preference;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .end local v9           #perm:Ljava/lang/String;
    .end local v10           #pkg:Landroid/content/pm/PackageInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocationSettings;->mLBSApps:Landroid/preference/PreferenceCategory;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocationSettings;->mLBSApps:Landroid/preference/PreferenceCategory;

    move-object v14, v0

    const v15, 0x7f090411

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private getText(Landroid/content/DialogInterface;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "resId"
    .parameter "text"

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showGpsConfigDialog()V
    .locals 8

    .prologue
    const v6, 0x7f03002a

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ntp_server"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supl_host"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supl_port"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .local v3, p:Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v4, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "NTP_SERVER"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SUPL_HOST"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    :cond_2
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "SUPL_PORT"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #file:Ljava/io/File;
    .end local v3           #p:Ljava/util/Properties;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    const v6, 0x7f0c0079

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/LocationSettings;->setText(Landroid/view/View;ILjava/lang/String;)V

    const v6, 0x7f0c007a

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/LocationSettings;->setText(Landroid/view/View;ILjava/lang/String;)V

    const v6, 0x7f0c007b

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/LocationSettings;->setText(Landroid/view/View;ILjava/lang/String;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0904f3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v3       #p:Ljava/util/Properties;
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/io/IOException;
    const-string v6, "LocationSettings"

    const-string v7, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v2, "network"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v2, "gps"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const v1, 0x7f0c0079

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LocationSettings;->getText(Landroid/content/DialogInterface;I)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNtpServer:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ntp_server"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const v1, 0x7f0c007a

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LocationSettings;->getText(Landroid/content/DialogInterface;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSuplHost:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "supl_host"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const v1, 0x7f0c007b

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LocationSettings;->getText(Landroid/content/DialogInterface;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSuplPort:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "supl_port"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "auto_agps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mAutoAGPS:Landroid/preference/CheckBoxPreference;

    const-string v0, "gps_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mGpsConfig:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->buildLBSApps()V

    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateToggles()V

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/LocationSettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocationSettings$SettingsObserver;-><init>(Lcom/android/settings/LocationSettings;Lcom/android/settings/LocationSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_0
    move v1, v4

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAutoAGPS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAutoAGPS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .restart local v0       #enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_agps_on"

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGpsConfig:Landroid/preference/Preference;

    if-ne p2, v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->showGpsConfigDialog()V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "auto_agps_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v3

    .local v0, isOn:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAutoAGPS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    .end local v0           #isOn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
