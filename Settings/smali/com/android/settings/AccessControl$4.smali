.class Lcom/android/settings/AccessControl$4;
.super Ljava/lang/Thread;
.source "AccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControl;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControl;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    iput-object p2, p0, Lcom/android/settings/AccessControl$4;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->removeAll()V

    new-instance v8, Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v8, pref:Landroid/preference/Preference;
    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    const v11, 0x10403ac

    invoke-virtual {v10, v11}, Lcom/android/settings/AccessControl;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, privace_name:Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v10, 0x10803d9

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setImageResource(I)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordForPrivacyModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f03004d

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_0
    const-string v10, "privacy_mode"

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->accessClick:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$400(Lcom/android/settings/AccessControl;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const v11, 0x8001

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .local v6, pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, hiddenPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, passwordPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, commonPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .local v5, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v4, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .local v1, flags:I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    invoke-static {}, Lcom/android/settings/AccessControl;->access$500()Ljava/util/HashSet;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    const/high16 v10, 0x200

    and-int/2addr v10, v1

    const/high16 v11, 0x200

    if-ne v10, v11, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #commonPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v1           #flags:I
    .end local v2           #hiddenPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #passwordPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    .restart local v0       #commonPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1       #flags:I
    .restart local v2       #hiddenPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #pInfo:Landroid/content/pm/PackageInfo;
    .restart local v6       #pInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7       #passwordPInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    const/high16 v10, 0x400

    and-int/2addr v10, v1

    const/high16 v11, 0x400

    if-ne v10, v11, :cond_4

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #flags:I
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    iget-object v11, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;
    invoke-static {v11}, Lcom/android/settings/AccessControl;->access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;

    move-result-object v11

    const v12, 0x7f03004c

    #calls: Lcom/android/settings/AccessControl;->addPackageInfos(Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V
    invoke-static {v10, v11, v2, v12}, Lcom/android/settings/AccessControl;->access$600(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    iget-object v11, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;
    invoke-static {v11}, Lcom/android/settings/AccessControl;->access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;

    move-result-object v11

    const v12, 0x7f03004d

    #calls: Lcom/android/settings/AccessControl;->addPackageInfos(Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V
    invoke-static {v10, v11, v7, v12}, Lcom/android/settings/AccessControl;->access$600(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    iget-object v11, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mAccessControlItems:Landroid/preference/PreferenceCategory;
    invoke-static {v11}, Lcom/android/settings/AccessControl;->access$300(Lcom/android/settings/AccessControl;)Landroid/preference/PreferenceCategory;

    move-result-object v11

    const/4 v12, 0x0

    #calls: Lcom/android/settings/AccessControl;->addPackageInfos(Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V
    invoke-static {v10, v11, v0, v12}, Lcom/android/settings/AccessControl;->access$600(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceCategory;Ljava/util/ArrayList;I)V

    iget-object v10, p0, Lcom/android/settings/AccessControl$4;->this$0:Lcom/android/settings/AccessControl;

    const/4 v11, 0x0

    #setter for: Lcom/android/settings/AccessControl;->mThreadRunning:Z
    invoke-static {v10, v11}, Lcom/android/settings/AccessControl;->access$702(Lcom/android/settings/AccessControl;Z)Z

    return-void
.end method
