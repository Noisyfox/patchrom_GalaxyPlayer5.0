.class public Lcom/android/settings/AccessControl;
.super Landroid/preference/PreferenceActivity;
.source "AccessControl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final WHITE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mAccessControl:Landroid/preference/CheckBoxPreference;

.field private mAccessControlItems:Landroid/preference/PreferenceCategory;

.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordConfirmed:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mThreadRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "com.android.calendar"

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.appshare"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.monitor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.uac"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.supermarket"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    const-string v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/android/settings/AccessControl;->mThreadRunning:Z

    new-instance v0, Lcom/android/settings/AccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessControl$1;-><init>(Lcom/android/settings/AccessControl;)V

    iput-object v0, p0, Lcom/android/settings/AccessControl;->mComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/AccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessControl$2;-><init>(Lcom/android/settings/AccessControl;)V

    iput-object v0, p0, Lcom/android/settings/AccessControl;->accessClick:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AccessControl;)Landroid/security/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AccessControl;->inflateAppEntry(Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccessControl;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/AccessControl;->accessClick:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings/AccessControl;->WHITE_LIST:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AccessControl;->addPackageInfos(Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/AccessControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/AccessControl;->mThreadRunning:Z

    return p1
.end method

.method private addPackageInfos(Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V
    .locals 7
    .parameter "category"
    .parameter
    .parameter "statusLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceCategory;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, pInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v6, p0, Lcom/android/settings/AccessControl;->mComparator:Ljava/util/Comparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v2, info:Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v5, pref:Landroid/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v5, p3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/AccessControl;->accessClick:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createContentView()V
    .locals 1

    .prologue
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControl;->addPreferencesFromResource(I)V

    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "access_control_items"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method private inflateAppEntry(Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 17
    .parameter "activity"
    .parameter "dialog"
    .parameter "packageName"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v13, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v14, v13, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .local v15, size:I
    if-lez v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, empty:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual/range {p2 .. p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v15, :cond_5

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .local v16, title:Landroid/widget/TextView;
    if-nez v11, :cond_1

    const/4 v3, 0x1

    if-ne v15, v3, :cond_0

    const v3, 0x1080528

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    const/4 v3, 0x1

    if-ne v15, v3, :cond_3

    const v3, 0x7f0900d1

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    new-instance v3, Lcom/android/settings/AccessControl$3;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/AccessControl$3;-><init>(Lcom/android/settings/AccessControl;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p2 .. p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x108051f

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    sub-int v3, v15, v3

    if-ne v11, v3, :cond_2

    const v3, 0x1080522

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v3, 0x1080525

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, appEntryName:Ljava/lang/CharSequence;
    if-nez v9, :cond_4

    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_4
    const v3, 0x7f0900d2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, p1

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #appEntryName:Ljava/lang/CharSequence;
    .end local v10           #empty:Landroid/widget/TextView;
    .end local v11           #i:I
    .end local v16           #title:Landroid/widget/TextView;
    :cond_5
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessControl;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/AccessControl;->createContentView()V

    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/AccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/ChooseAccessControl;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControl;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setACLockEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v2, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isACLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AccessControl;->mAccessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/settings/AccessControl;->mThreadRunning:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/AccessControl;->mThreadRunning:Z

    new-instance v1, Lcom/android/settings/AccessControl$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/AccessControl$4;-><init>(Lcom/android/settings/AccessControl;Lcom/android/internal/widget/LockPatternUtils;)V

    .local v1, refreshThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v1           #refreshThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/AccessControl;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
