.class public final enum Lorg/wikipedia/readinglist/ReadingListItemView$Description;
.super Ljava/lang/Enum;
.source "ReadingListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Description"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/readinglist/ReadingListItemView$Description;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/readinglist/ReadingListItemView$Description;

.field public static final enum DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

.field public static final enum SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    const-string v1, "DETAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListItemView$Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    const-string v1, "SUMMARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/readinglist/ReadingListItemView$Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    sget-object v4, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->$VALUES:[Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/readinglist/ReadingListItemView$Description;
    .locals 1

    .line 50
    const-class v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/readinglist/ReadingListItemView$Description;
    .locals 1

    .line 50
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->$VALUES:[Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    invoke-virtual {v0}, [Lorg/wikipedia/readinglist/ReadingListItemView$Description;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    return-object v0
.end method
