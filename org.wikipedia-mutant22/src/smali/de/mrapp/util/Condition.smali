.class public final Lde/mrapp/util/Condition;
.super Ljava/lang/Object;
.source "Condition.kt"


# static fields
.field public static final INSTANCE:Lde/mrapp/util/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lde/mrapp/util/Condition;

    invoke-direct {v0}, Lde/mrapp/util/Condition;-><init>()V

    sput-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final throwException(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 30
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string p1, "exception"

    .line 35
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ensureAtLeast(IILjava/lang/String;)V
    .locals 1

    .line 198
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt p1, p2, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureAtLeast(JJLjava/lang/String;)V
    .locals 7

    .line 218
    const-class v6, Ljava/lang/IllegalArgumentException;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureAtLeast(JJLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p5, p6}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureAtMaximum(IILjava/lang/String;)V
    .locals 1

    .line 300
    const-class v0, Ljava/lang/IllegalArgumentException;

    .line 299
    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureAtMaximum(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-gt p1, p2, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureGreater(FFLjava/lang/String;)V
    .locals 1

    .line 439
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mrapp/util/Condition;->ensureGreater(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureGreater(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    cmpg-float p1, p1, p2

    if-lez p1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureGreater(IILjava/lang/String;)V
    .locals 1

    .line 400
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mrapp/util/Condition;->ensureGreater(IILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureGreater(IILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p1, p2, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 138
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lde/mrapp/util/TextUtil;->INSTANCE:Lde/mrapp/util/TextUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/TextUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p2, p3}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 109
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 119
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p2, p3}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureSmaller(FFLjava/lang/String;)V
    .locals 1

    .line 535
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mrapp/util/Condition;->ensureSmaller(FFLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureSmaller(FFLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float p1, p1, p2

    if-gez p1, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-direct {p0, p3, p4}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ensureTrue(ZLjava/lang/String;)V
    .locals 1

    .line 43
    const-class v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final ensureTrue(ZLjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exceptionClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p2, p3}, Lde/mrapp/util/Condition;->throwException(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1
.end method
