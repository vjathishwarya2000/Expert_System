;;;***********
;;; HEADACHE EXPERT SYSTEM
;;;***********
;;; Name - Jathishwarya V.
;;; Index No - 204080D
;;;************

(deffacts startup
  (start))

(defrule p1
  ?p <- (start)
  =>
  (printout t "Select the intensity of your pain? (Mild/Moderate/Severe): " crlf)
  (assert (decision (read)))
  (retract ?p))

(defrule p2
  (decision Mild)
  =>
  (printout t "Select the location of your pain? (One_side_of_head/Neck_and_shoulder/Both_sides_of_head): " crlf)
  (assert (Mild (read))))

(defrule p3 
  (decision Mild)
  (Mild One_side_of_head)
  =>
  (printout t "Did it start from back & spread through? (Yes/No): " crlf)
  (assert (One_side_of_head (read))))

(defrule rule1
  (decision Mild)
  (Mild One_side_of_head)
  (One_side_of_head Yes)
  =>
  (printout t "You are stressed" crlf))

(defrule p4 
  (decision Mild)
  (Mild One_side_of_head)
  (One_side_of_head No)
  =>
  (printout t "Do you experience visual disturbances and mood changes? (Yes/No): " crlf)
  (assert (No (read))))

(defrule rule2
  (decision Mild)
  (Mild One_side_of_head)
  (One_side_of_head No)
  (No Yes)
  =>
  (printout t "You have Migraine with aura" crlf))

(defrule rule3
  (decision Mild)
  (Mild One_side_of_head)
  (One_side_of_head No)
  (No No)
  =>
  (printout t "You have Migraine" crlf))

(defrule p5 
  (decision Mild)
  (Mild Neck_and_shoulder)
  =>
  (printout t "Did you engage in any physical activities? (Yes/No): " crlf)
  (assert (Neck_and_shoulder (read))))

(defrule rule4 
  (decision Mild)
  (Mild Neck_and_shoulder)
  (Neck_and_shoulder Yes)
  =>
  (printout t "You have exertional headache" crlf))

(defrule rule5 
  (decision Mild)
  (Mild Neck_and_shoulder)
  (Neck_and_shoulder No)
  =>
  (printout t "You have Migraine" crlf))

(defrule p6 
  (decision Mild)
  (Mild Both_sides_of_head)
  =>
  (printout t "Do you feel tired and sleepy all the time? (Yes/No): " crlf)
  (assert (Both_sides_of_head (read))))

(defrule rule6 
  (decision Mild)
  (Mild Both_sides_of_head)
  (Both_sides_of_head Yes)
  =>
  (printout t "You have Fibromyalgia" crlf))

(defrule rule7 
  (decision Mild)
  (Mild Both_sides_of_head)
  (Both_sides_of_head No)
  =>
  (printout t "You have Tension Headache" crlf))

(defrule p7
  (decision Moderate)
  =>
  (printout t "Select the location of your pain? (One_or_both_sides_of_head/Head-and-Neck/Face): " crlf)
  (assert (Moderate (read))))

(defrule p8 
  (decision Moderate)
  (Moderate One_or_both_sides_of_head)
  =>
  (printout t "Is it painful when you shake your head? (Yes/No): " crlf)
  (assert (One_or_both_sides_of_head (read))))

(defrule rule8 
  (decision Moderate)
  (Moderate One_or_both_sides_of_head)
  (One_or_both_sides_of_head Yes)
  =>
  (printout t "You are dehydrated" crlf))

(defrule p9 
  (decision Moderate)
  (Moderate One_or_both_sides_of_head)
  (One_or_both_sides_of_head No)
  =>
  (printout t "Do you experience visual disturbances & mood changes? (Yes/No): " crlf)
  (assert (No (read))))

(defrule rule9 
  (decision Moderate)
  (Moderate One_or_both_sides_of_head)
  (One_or_both_sides_of_head No)
  (No Yes)
  =>
  (printout t "You have Migraine with aura" crlf))

(defrule rule10 
  (decision Moderate)
  (Moderate One_or_both_sides_of_head)
  (One_or_both_sides_of_head No)
  (No No)
  =>
  (printout t "You have Migraine" crlf))

(defrule p10 
  (decision Moderate)
  (Moderate Head-and-Neck)
  =>
  (printout t "Do you feel like forehead is compressed by a band? (Yes/No): " crlf)
  (assert (Head-and-Neck (read))))

(defrule rule11 
  (decision Moderate)
  (Moderate Head-and-Neck)
  (Head-and-Neck Yes)
  =>
  (printout t "You have Tension Headache" crlf))

(defrule rule12 
  (decision Moderate)
  (Moderate Head-and-Neck)
  (Head-and-Neck No)
  =>
  (printout t "You have Migraine" crlf))

(defrule rule13 
  (decision Moderate)
  (Moderate Face)
  =>
  (printout t "You have Migraine" crlf))

(defrule p11
  (decision Severe)
  =>
  (printout t "Select the location of your pain? (One-side-of-head-throbbing-pain/An-area-of-face/Both-sides-with-throbbing-pain): " crlf)
  (assert (Severe (read))))

(defrule rule14
  (decision Severe)
  (Severe One-side-of-head-throbbing-pain)
  =>
  (printout t "You have Migraine" crlf))

(defrule p12 
  (decision Severe)
  (Severe An-area-of-face)
  =>
  (printout t "Which area of face is affected? (Top-of-one-side-of-face/Forehead-between-eyes/Cheek-bones/One-side-of-a-face): " crlf)
  (assert (An-area-of-face (read))))

(defrule rule15 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face Top-of-one-side-of-face)
  =>
  (printout t "You have Trigeminal Neuralgia Headache" crlf))

(defrule rule16 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face Forehead-between-eyes)
  =>
  (printout t "You have Sinus Headache" crlf))

(defrule rule17 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face Cheek-bones)
  =>
  (printout t "You have Sinus Headache" crlf))

(defrule p13 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face One-side-of-a-face)
  =>
  (printout t "Extending pain behind eyes? (Yes/No): " crlf)
  (assert (One-side-of-a-face (read))))

(defrule rule18 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face One-side-of-a-face)
  (One-side-of-a-face Yes)
  =>
  (printout t "You have Cluster Headache" crlf))

(defrule rule19 
  (decision Severe)
  (Severe An-area-of-face)
  (An-area-of-face One-side-of-a-face)
  (One-side-of-a-face No)
  =>
  (printout t "You have Migraine" crlf))

(defrule rule20
  (decision Severe)
  (Severe Both-sides-with-throbbing-pain)
  =>
  (printout t "You have Migraine" crlf))





















  




