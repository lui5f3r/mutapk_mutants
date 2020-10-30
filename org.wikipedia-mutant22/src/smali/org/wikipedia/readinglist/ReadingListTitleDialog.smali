.class public final Lorg/wikipedia/readinglist/ReadingListTitleDialog;
.super Ljava/lang/Object;
.source "ReadingListTitleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readingListTitleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;",
            ")",
            "Lorg/wikipedia/views/TextInputDialog;"
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lorg/wikipedia/views/TextInputDialog;->newInstance(Landroid/app/Activity;ZLorg/wikipedia/views/TextInputDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    move-result-object p0

    return-object p0
.end method
