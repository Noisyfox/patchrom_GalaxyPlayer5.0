.class public final enum Lcom/miui/camera/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/camera/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/camera/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/miui/camera/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/miui/camera/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/miui/camera/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/ImageManager$DataLocation;->NONE:Lcom/miui/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/miui/camera/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/miui/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/ImageManager$DataLocation;->INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/miui/camera/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/miui/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/miui/camera/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/miui/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/ImageManager$DataLocation;->ALL:Lcom/miui/camera/ImageManager$DataLocation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/camera/ImageManager$DataLocation;

    sget-object v1, Lcom/miui/camera/ImageManager$DataLocation;->NONE:Lcom/miui/camera/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/camera/ImageManager$DataLocation;->INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/camera/ImageManager$DataLocation;->ALL:Lcom/miui/camera/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/camera/ImageManager$DataLocation;->$VALUES:[Lcom/miui/camera/ImageManager$DataLocation;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/camera/ImageManager$DataLocation;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/miui/camera/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/camera/ImageManager$DataLocation;

    return-object p0
.end method

.method public static values()[Lcom/miui/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/miui/camera/ImageManager$DataLocation;->$VALUES:[Lcom/miui/camera/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/miui/camera/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/camera/ImageManager$DataLocation;

    return-object v0
.end method
