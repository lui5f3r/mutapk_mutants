.class Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;
.super Ljava/lang/Object;
.source "MwParseResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwParseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parse"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;->text:Ljava/lang/String;

    return-object p0
.end method
