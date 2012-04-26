.class public final enum Lcom/miui/camera/Constants$DEVICE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/camera/Constants$DEVICE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/camera/Constants$DEVICE;

.field public static final enum COMMON:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum GOOGLE_CRESPO:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_ACE:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_BRAVO:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_PASSION:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_SAGA:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_SUPERSONIC:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_VISION:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum HTC_VIVO:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum SAMSUNG_GALAXYS2:Lcom/miui/camera/Constants$DEVICE;

.field public static final enum SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->COMMON:Lcom/miui/camera/Constants$DEVICE;

    .line 43
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_BRAVO"

    invoke-direct {v0, v1, v4}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_BRAVO:Lcom/miui/camera/Constants$DEVICE;

    .line 44
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_PASSION"

    invoke-direct {v0, v1, v5}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_PASSION:Lcom/miui/camera/Constants$DEVICE;

    .line 45
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_SUPERSONIC"

    invoke-direct {v0, v1, v6}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_SUPERSONIC:Lcom/miui/camera/Constants$DEVICE;

    .line 46
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_HTCLEO"

    invoke-direct {v0, v1, v7}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

    .line 47
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_ACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_ACE:Lcom/miui/camera/Constants$DEVICE;

    .line 48
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_VIVO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_VIVO:Lcom/miui/camera/Constants$DEVICE;

    .line 49
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_SAGA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_SAGA:Lcom/miui/camera/Constants$DEVICE;

    .line 50
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "HTC_VISION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->HTC_VISION:Lcom/miui/camera/Constants$DEVICE;

    .line 51
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "MOTOROLA_UMTS_SHOLES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    .line 52
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "MOTOROLA_UMTS_JORDAN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    .line 53
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "SAMSUNG_GALAXYS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

    .line 54
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "SAMSUNG_GALAXYS2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS2:Lcom/miui/camera/Constants$DEVICE;

    .line 55
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "SAMSUNG_T959"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;

    .line 56
    new-instance v0, Lcom/miui/camera/Constants$DEVICE;

    const-string v1, "GOOGLE_CRESPO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$DEVICE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->GOOGLE_CRESPO:Lcom/miui/camera/Constants$DEVICE;

    .line 41
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->COMMON:Lcom/miui/camera/Constants$DEVICE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_BRAVO:Lcom/miui/camera/Constants$DEVICE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_PASSION:Lcom/miui/camera/Constants$DEVICE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_SUPERSONIC:Lcom/miui/camera/Constants$DEVICE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->HTC_ACE:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->HTC_VIVO:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->HTC_SAGA:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->HTC_VISION:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS2:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->GOOGLE_CRESPO:Lcom/miui/camera/Constants$DEVICE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/camera/Constants$DEVICE;->$VALUES:[Lcom/miui/camera/Constants$DEVICE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/camera/Constants$DEVICE;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/miui/camera/Constants$DEVICE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/camera/Constants$DEVICE;

    return-object p0
.end method

.method public static values()[Lcom/miui/camera/Constants$DEVICE;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/camera/Constants$DEVICE;->$VALUES:[Lcom/miui/camera/Constants$DEVICE;

    invoke-virtual {v0}, [Lcom/miui/camera/Constants$DEVICE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/camera/Constants$DEVICE;

    return-object v0
.end method
