.class Lorg/wikipedia/edit/preview/EditPreview$Parse;
.super Ljava/lang/Object;
.source "EditPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/preview/EditPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parse"
.end annotation


# instance fields
.field private pageId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageid"
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method text()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreview$Parse;->text:Ljava/lang/String;

    return-object v0
.end method
