.class public Lde/mrapp/android/tabswitcher/model/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private closing:Z

.field private position:F

.field private state:Lde/mrapp/android/tabswitcher/model/State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 48
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 49
    sget-object v0, Lde/mrapp/android/tabswitcher/model/State;->HIDDEN:Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/Tag;->setClosing(Z)V

    return-void
.end method


# virtual methods
.method public final clone()Lde/mrapp/android/tabswitcher/model/Tag;
    .locals 2

    .line 118
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/model/Tag;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    new-instance v0, Lde/mrapp/android/tabswitcher/model/Tag;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/model/Tag;-><init>()V

    .line 123
    :goto_0
    iget v1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->position:F

    iput v1, v0, Lde/mrapp/android/tabswitcher/model/Tag;->position:F

    .line 124
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->state:Lde/mrapp/android/tabswitcher/model/State;

    iput-object v1, v0, Lde/mrapp/android/tabswitcher/model/Tag;->state:Lde/mrapp/android/tabswitcher/model/State;

    .line 125
    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->closing:Z

    iput-boolean v1, v0, Lde/mrapp/android/tabswitcher/model/Tag;->closing:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/Tag;->clone()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()F
    .locals 1

    .line 59
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/Tag;->position:F

    return v0
.end method

.method public final getState()Lde/mrapp/android/tabswitcher/model/State;
    .locals 1

    .line 79
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/Tag;->state:Lde/mrapp/android/tabswitcher/model/State;

    return-object v0
.end method

.method public final isClosing()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/Tag;->closing:Z

    return v0
.end method

.method public final setClosing(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->closing:Z

    return-void
.end method

.method public final setPosition(F)V
    .locals 0

    .line 69
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->position:F

    return-void
.end method

.method public final setState(Lde/mrapp/android/tabswitcher/model/State;)V
    .locals 2

    .line 90
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The state may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/Tag;->state:Lde/mrapp/android/tabswitcher/model/State;

    return-void
.end method
