.class public interface abstract Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;
.super Ljava/lang/Object;
.source "PageImageHistoryContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/database/contract/PageImageHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Col"
.end annotation


# static fields
.field public static final API_TITLE:Lorg/wikipedia/database/column/StrColumn;

.field public static final DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

.field public static final ID:Lorg/wikipedia/database/column/LongColumn;

.field public static final IMAGE_NAME:Lorg/wikipedia/database/column/StrColumn;

.field public static final LANG:Lorg/wikipedia/database/column/StrColumn;

.field public static final NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

.field public static final SELECTION:[Ljava/lang/String;

.field public static final SITE:Lorg/wikipedia/database/column/StrColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lorg/wikipedia/database/column/LongColumn;

    const-string v1, "pageimages"

    const-string v2, "_id"

    const-string v3, "integer primary key"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/LongColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->ID:Lorg/wikipedia/database/column/LongColumn;

    .line 16
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "site"

    const-string v3, "string"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    .line 17
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "lang"

    const-string v4, "text"

    invoke-direct {v0, v1, v2, v4}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 18
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "title"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 19
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "displayTitle"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->DISPLAY_TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 20
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "namespace"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

    .line 21
    new-instance v0, Lorg/wikipedia/database/column/StrColumn;

    const-string v2, "imageName"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/database/column/StrColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->IMAGE_NAME:Lorg/wikipedia/database/column/StrColumn;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/wikipedia/database/column/Column;

    .line 23
    sget-object v1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->NAMESPACE:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/wikipedia/database/DbUtil;->qualifiedNames([Lorg/wikipedia/database/column/Column;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    return-void
.end method
