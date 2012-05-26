.class public Lcom/android/settings/cit/CitLauncherActivity;
.super Landroid/app/ListActivity;
.source "CitLauncherActivity.java"


# static fields
.field private static mResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final s_citTestArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CitVersionCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CitSimCardCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CitKeyboardTestActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CitPointerLocationCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CitDisplayCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CitVibratorCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CitWifiAddressCheckActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CitWifiScanCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CitBluetoothAddressCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CitBluetoothScanCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CitAccelermeterSensorCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CitMagneticSensorCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CitProximitySensorCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CitLightSensorCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CitSdCardPluginDetectActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CitPlaySdCardMp3Activity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CitSdCardPlugoutDetectActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CitAudioLoopbackCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CitHeadsetPlugDetectActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CitHeadsetButtonCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CitHeadsetLoopbackCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CitHeadsetPullDetectActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CitChargerPluginCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "CitChargerCurrentCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "CitChargerPlugoutCheckActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CitResetCheckActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/cit/CitLauncherActivity;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/cit/CitLauncherActivity;->runTest(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getResult(Ljava/lang/String;)I
    .locals 1
    .parameter "className"

    .prologue
    sget-object v0, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "className"

    .prologue
    const-string v2, ""

    .local v2, summary:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.settings.cit."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/settings/cit/CitBaseActivity;>;"
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Class;

    .local v1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v4

    const-string v4, "getTitle"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0           #m:Ljava/lang/reflect/Method;
    .end local v1           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/settings/cit/CitBaseActivity;>;"
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0

    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public static launchNextTest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "className"

    .prologue
    const/4 v0, 0x0

    .local v0, hasNext:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    sget-object v2, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-static {p0, v2}, Lcom/android/settings/cit/CitLauncherActivity;->runTest(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private refreshList()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/settings/cit/CitLauncherActivity$1;

    const v1, 0x7f030015

    sget-object v2, Lcom/android/settings/cit/CitLauncherActivity;->s_citTestArray:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/cit/CitLauncherActivity$1;-><init>(Lcom/android/settings/cit/CitLauncherActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitLauncherActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/cit/CitLauncherActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cit/CitLauncherActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitLauncherActivity$2;-><init>(Lcom/android/settings/cit/CitLauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private static runTest(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "className"

    .prologue
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.settings.cit."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/settings/cit/CitBaseActivity;>;"
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/settings/cit/CitBaseActivity;>;"
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized setFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    const-class v0, Lcom/android/settings/cit/CitLauncherActivity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPassed(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    const-class v0, Lcom/android/settings/cit/CitLauncherActivity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/settings/cit/CitLauncherActivity;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/cit/CitLauncherActivity;->refreshList()V

    return-void
.end method
