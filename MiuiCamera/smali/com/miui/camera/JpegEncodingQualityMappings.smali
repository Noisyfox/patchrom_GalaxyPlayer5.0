.class public Lcom/miui/camera/JpegEncodingQualityMappings;
.super Ljava/lang/Object;
.source "JpegEncodingQualityMappings.java"


# static fields
.field private static final intQualityArray:[I

.field private static final strQualityArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fine"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "superfine"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/camera/JpegEncodingQualityMappings;->strQualityArray:[Ljava/lang/String;

    .line 14
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/camera/JpegEncodingQualityMappings;->intQualityArray:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualityNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "jpegQuality"

    .prologue
    .line 21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/miui/camera/JpegEncodingQualityMappings;->strQualityArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 22
    sget-object v1, Lcom/miui/camera/JpegEncodingQualityMappings;->strQualityArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/miui/camera/JpegEncodingQualityMappings;->intQualityArray:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    .line 27
    :goto_1
    return v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x55

    goto :goto_1
.end method
