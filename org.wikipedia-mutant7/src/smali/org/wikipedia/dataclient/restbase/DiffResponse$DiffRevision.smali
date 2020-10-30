.class public Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;
.super Ljava/lang/Object;
.source "DiffResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/DiffResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffRevision"
.end annotation


# instance fields
.field private id:J

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;",
            ">;"
        }
    .end annotation
.end field

.field private slotRole:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slot_role"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
