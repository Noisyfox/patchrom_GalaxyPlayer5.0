.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Activity;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mForceStopButton:Landroid/widget/Button;

.field private mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

.field mInstaller:Landroid/content/ComponentName;

.field private mPackages:[Ljava/lang/String;

.field private mPercentage:I

.field private mReportButton:Landroid/widget/Button;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mUid:I

.field private mUsageSince:J

.field private mUsesGps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, item:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x7f0c0060

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, actionButton:Landroid/widget/Button;
    const v5, 0x7f0c00d2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, summaryView:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private createDetails()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .local v7, intent:Landroid/content/Intent;
    const-string v9, "battery_sipper"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    const-string v9, "usage_since"

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:J

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v9, v9, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v9, v9, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget v9, v9, Lcom/android/settings/fuelgauge/BatterySipper;->mUid:I

    iput v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget-wide v9, v9, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    sget-wide v11, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPercentage:I

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget-wide v9, v9, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    sget-wide v11, Lcom/android/settings/fuelgauge/BatterySipper;->mMaxPower:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    .local v5, gaugeValue:I
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatterySipper;->getDescription()Ljava/lang/String;

    move-result-object v8

    .local v8, summary:Ljava/lang/String;
    const v9, 0x7f0c00d2

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0c0061

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0c00d5

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v9, "%d%%"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPercentage:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0c00d7

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const v9, 0x7f0c012d

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v9, 0x7f0c012e

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    const v9, 0x7f0c00d6

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .local v4, gaugeImage:Landroid/widget/ImageView;
    new-instance v9, Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-direct {v9}, Lcom/android/settings/fuelgauge/PercentageBar;-><init>()V

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    int-to-double v10, v5

    iput-wide v10, v9, Lcom/android/settings/fuelgauge/PercentageBar;->percent:D

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f02

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x7f0c002a

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .local v6, iconImage:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x7f0c00d8

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    const v9, 0x7f0c00d9

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v10, 0x7f090272

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v10, 0x1040311

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "send_action_app_error"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, enabled:I
    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .end local v3           #enabled:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v9, v9, Lcom/android/settings/fuelgauge/AppSipper;

    if-eqz v9, :cond_1

    const v9, 0x7f0c00dd

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, charts:Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    check-cast v0, Lcom/android/settings/fuelgauge/AppSipper;

    .local v0, app:Lcom/android/settings/fuelgauge/AppSipper;
    const v9, 0x7f0c00de

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/HistoryChart;

    .local v1, chart:Lcom/android/settings/fuelgauge/HistoryChart;
    const-string v9, "%f"

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setUnitFormat(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/AppSipper;->getUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getCpuUsageHistoryTimeline()Landroid/os/IHistoryValueTimeline;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setHistory(Landroid/os/IHistoryValueTimeline;)V

    const v9, 0x7f0c00df

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #chart:Lcom/android/settings/fuelgauge/HistoryChart;
    check-cast v1, Lcom/android/settings/fuelgauge/HistoryChart;

    .restart local v1       #chart:Lcom/android/settings/fuelgauge/HistoryChart;
    const-string v9, "%,d KB"

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setUnitFormat(Ljava/lang/String;)V

    sget-object v9, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Exact:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setStyle(Lcom/android/settings/fuelgauge/HistoryChart$Style;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/AppSipper;->getUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getMemUsageHistoryTimeline()Landroid/os/IHistoryValueTimeline;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setHistory(Landroid/os/IHistoryValueTimeline;)V

    const v9, 0x7f0c00e0

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #chart:Lcom/android/settings/fuelgauge/HistoryChart;
    check-cast v1, Lcom/android/settings/fuelgauge/HistoryChart;

    .restart local v1       #chart:Lcom/android/settings/fuelgauge/HistoryChart;
    const-string v9, "%.1f KB/s"

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setUnitFormat(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/AppSipper;->getUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getTrafficHistoryTimeline()Landroid/os/IHistoryValueTimeline;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/HistoryChart;->setHistory(Landroid/os/IHistoryValueTimeline;)V

    .end local v0           #app:Lcom/android/settings/fuelgauge/AppSipper;
    .end local v1           #chart:Lcom/android/settings/fuelgauge/HistoryChart;
    .end local v2           #charts:Landroid/view/View;
    :cond_1
    return-void

    .restart local v3       #enabled:I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .end local v3           #enabled:I
    :cond_4
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .restart local v3       #enabled:I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 5
    .parameter

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 12
    .parameter "uid"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, packages:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_4

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v7

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_6

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v1, v10

    .local v1, isSystem:Z
    :goto_2
    const/4 v5, 0x1

    .local v5, removeHeader:Z
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v7, v7, Lcom/android/settings/fuelgauge/AppSipper;

    if-eqz v7, :cond_7

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const v7, 0x7f090350

    const v8, 0x7f09035c

    const/4 v9, 0x5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v7, :cond_1

    const v7, 0x7f0900c7

    const v8, 0x7f09035d

    const/4 v9, 0x6

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    :cond_3
    move-object v3, v11

    goto :goto_0

    :cond_4
    move-object v0, v11

    goto :goto_1

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_5
    move v1, v9

    goto :goto_2

    :cond_6
    move v1, v9

    goto :goto_2

    .restart local v1       #isSystem:Z
    .restart local v5       #removeHeader:Z
    :cond_7
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v7, v7, Lcom/android/settings/fuelgauge/ScreenSipper;

    if-eqz v7, :cond_8

    const v7, 0x7f0901b3

    const v8, 0x7f090356

    invoke-direct {p0, v7, v8, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v7, v7, Lcom/android/settings/fuelgauge/WifiSipper;

    if-eqz v7, :cond_9

    const v7, 0x7f090126

    const v8, 0x7f090358

    const/4 v9, 0x2

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v7, v7, Lcom/android/settings/fuelgauge/BluetoothSipper;

    if-eqz v7, :cond_a

    const v7, 0x7f0900ef

    const v8, 0x7f09035a

    const/4 v9, 0x3

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    instance-of v7, v7, Lcom/android/settings/fuelgauge/RadioSipper;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    check-cast v6, Lcom/android/settings/fuelgauge/RadioSipper;

    .local v6, sipper:Lcom/android/settings/fuelgauge/RadioSipper;
    iget-wide v7, v6, Lcom/android/settings/fuelgauge/RadioSipper;->mNoCoveragePercent:D

    const-wide/high16 v9, 0x4024

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    const v7, 0x7f0900b7

    const v8, 0x7f090354

    const/4 v9, 0x4

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_3

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    .end local v6           #sipper:Lcom/android/settings/fuelgauge/RadioSipper;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method private fillDetailsSection()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySipper;->fillDetails(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private fillPackagesSection(I)V
    .locals 10
    .parameter "uid"

    .prologue
    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v8, 0x7f0c00dc

    invoke-virtual {p0, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .local v6, packagesParent:Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, label:Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    :cond_4
    const v8, 0x7f03003b

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, item:Landroid/view/ViewGroup;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v8, 0x7f0c0003

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, labelView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #item:Landroid/view/ViewGroup;
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v5           #labelView:Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const v1, 0x7f0c00db

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0c00dc

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .local v1, report:Landroid/app/ApplicationErrorReport;
    const/4 v3, 0x3

    iput v3, v1, Landroid/app/ApplicationErrorReport;->type:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v5

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v5

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    new-instance v0, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .local v0, batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;
    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPercentage:I

    iput v3, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:J

    iput-wide v3, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->getDetails()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mBatterySipper:Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->getCheckInDetails()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    iput-object v0, v1, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, result:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;
    .end local v2           #result:Landroid/content/Intent;
    :cond_1
    move v3, v5

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    return-void
.end method
